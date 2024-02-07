//
//  SecondCollectionView.swift
//  AppleMusic-SwiftUI
//
//  Created by Никита Шиляев on 03.02.2024.
//

import SwiftUI

struct SecondCollectionView: View {

    @State private var secondModel = RadioModels.previewSecondCollection
    private let columns = [GridItem(spacing: 100)]

    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: columns, content: {
                ForEach($secondModel) { $index in
                    HStack() {
                        Image(index.image)
                            .resizable()
                            .frame(width: 120, height: 120)
                            .padding(.horizontal)
                        VStack(alignment: .leading) {
                            Text(index.name ?? "")
                                .font(.title3)
                            Text(index.destination ?? "")
                                .font(.subheadline)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                    }
                    Divider()

                }
            })
        }
    }
}

#Preview {
    SecondCollectionView()
}
