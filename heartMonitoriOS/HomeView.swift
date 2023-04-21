//
//  HomeView.swift
//  heartMonitoriOS
//
//  Created by Hiago Chagas on 18/04/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Heart rate: \(viewModel.monitoring?.heartRate ?? 0)" )
            Text("SP02: \(viewModel.monitoring?.sp02 ?? 0)")
        }
        .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
