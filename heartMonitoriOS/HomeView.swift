//
//  HomeView.swift
//  heartMonitoriOS
//
//  Created by Hiago Chagas on 18/04/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    @State private var animationAmount: CGFloat = 1
    
    private var heartRateText: Text {
        let heartRate = viewModel.monitoring?.heartRate ?? 0
        let text = String(format: "Frequência cardíaca: %.1f bpm", heartRate)
        return Text(text)
    }
    
    private var sp02Text: Text {
        let sp02 = viewModel.monitoring?.sp02 ?? 0
        return Text("Oxigenação sanguínea: \(sp02) %")
    }
    
    
    var body: some View {
        VStack(spacing: 20) {
            heartRateText
            sp02Text
        }
        .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
