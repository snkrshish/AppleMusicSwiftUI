//
//  RadioScreen.swift
//  AppleMusic-SwiftUI
//
//  Created by Никита Шиляев on 03.02.2024.
//

import SwiftUI

struct RadioScreen: View {

    var body: some View {
        NavigationView {
            ScrollView {
                FirstCollectionView()
                    .navigationTitle("Радио")
                    .padding(.leading)
                Divider()
                HStack {
                    Text("Станции")
                        .font(.title)
                    .bold()
                    Spacer()
                }
                .padding(.leading)
                SecondCollectionView()
            }
        }

    }
}

#Preview {
    RadioScreen()
}
