//
//  HomeViewModel.swift
//  heartMonitoriOS
//
//  Created by Hiago Chagas on 21/04/23.
//

import Foundation
import FirebaseDatabase

final class HomeViewModel: ObservableObject {
    private let databasePath: DatabaseReference
    private let decoder = JSONDecoder()
    @Published private(set) var monitoring: Monitoring?
    
    init() {
        self.databasePath = Database.database().reference()
        listenForChangesInMonitoring()
    }
    
    private func listenForChangesInMonitoring() {
        databasePath.observe(.childChanged) { [weak self] snapshot in
            guard let self, let json = snapshot.value as? [String: Any] else { return }
            do {
                let data = try JSONSerialization.data(withJSONObject: json)
                let monitoring = try self.decoder.decode(Monitoring.self, from: data)
                self.monitoring = monitoring
            } catch {
                self.monitoring = nil
            }
        }
    }
}
