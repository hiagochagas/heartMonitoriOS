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
    
    private var heartRateView: CardView {
        let heartRate = viewModel.monitoring?.heartRate ?? 0
        let text = String(format: "%.1f bpm", heartRate)
        return CardView(title: "Frequência cardíaca", imageName: "heart", description: text)
    }
    
    private var sp02View: CardView {
        let sp02 = viewModel.monitoring?.sp02 ?? 0
        return CardView(title: "Oxigênio no sangue", imageName: "bloodOxygen", description: "\(sp02) %")
    }
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Bem vindo")
                .font(.largeTitle)
                .padding(.leading, 30)
                .padding(.top, 30)
                .bold()
            heartRateView
            sp02View
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
