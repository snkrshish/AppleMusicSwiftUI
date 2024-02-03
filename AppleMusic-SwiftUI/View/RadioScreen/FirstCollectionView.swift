//
//  FirstCollectionView.swift
//  AppleMusic-SwiftUI
//
//  Created by Никита Шиляев on 03.02.2024.
//

import SwiftUI

struct FirstCollectionView: View {

    private let rows = [GridItem(.fixed(320))]
    private let firstModel = RadioModels.previewFirstCollection()


    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: rows) {
                ForEach(firstModel)  { index in
                    VStack(alignment: .leading) {
                        Divider()
                        Text(index.destination)
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                        Text(index.name)
                            .font(.title)
                        Text(index.secondDestination ?? "    ")
                            .font(.title2)
                            .foregroundStyle(.gray)
                        Image(index.image)
                            .resizable()
                            .clipShape(.buttonBorder)
                    }
                    .frame(width: 300)
                }
            }
        })
        .frame(height: 370)
    }
}

#Preview {
    FirstCollectionView()
}
