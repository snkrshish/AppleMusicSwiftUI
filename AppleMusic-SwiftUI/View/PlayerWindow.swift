//
//  PlayerWindow.swift
//  AppleMusic-SwiftUI
//
//  Created by Никита Шиляев on 29.01.2024.
//

import SwiftUI

struct PlayerWindow: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Image("music")
                    .resizable()
                    .frame(width: 70, height: 50)
                    .shadow(radius: 7)
                    .padding(.leading)
                Text("Не исполняется")
                Spacer()
                Button(action: {

                }, label: {
                    Image(systemName: "play.fill")
                        .foregroundStyle(.black)
                })
                Button(action: {

                }, label: {
                    Image(systemName: "forward.fill")                      .foregroundStyle(.black)
                        .opacity(0.3)
                        .padding(.trailing)
                })
            }
            .frame(height: 70)
            .background(Color(.systemGray6))
            Divider()
                
        }
        .offset(y: -55)
    }
}

#Preview {
    PlayerWindow()
}
