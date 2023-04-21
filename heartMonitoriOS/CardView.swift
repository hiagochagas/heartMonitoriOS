//
//  CardView.swift
//  heartMonitoriOS
//
//  Created by Hiago Chagas on 21/04/23.
//

import SwiftUI

struct CardView: View {
    var title: String
    var imageName: String
    var description: String
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 16) {
                Text(title)
                    .bold()
                    .font(.title)
                HStack(spacing: 10) {
                    Image(imageName)
                        .resizable()
                        .frame(width: 30, height: 30)
                    Text(description)
                        .font(.title2)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 20)
            .padding(.trailing, 20)
            .padding(.top, 8)
            .padding(.bottom, 8)
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(16)
        .shadow(radius: 5)
        .padding(.leading)
        .padding(.trailing)
    }
}
