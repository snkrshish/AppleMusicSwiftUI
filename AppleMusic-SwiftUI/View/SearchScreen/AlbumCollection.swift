//
//  AlbumCollection.swift
//  AppleMusic-SwiftUI
//
//  Created by Никита Шиляев on 06.02.2024.
//

import SwiftUI

struct AlbumCollection: View {

    private let columns = [GridItem(.flexible()),
                           GridItem(.flexible())]
    @State private var model = RadioModels.previewCategories

    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            HStack {
                Text("Поиск по категориям")
                    .font(.title2)
                .bold()
                Spacer()
            }
            .padding(.leading)

            LazyVGrid(columns: columns,spacing: 10) {
                ForEach($model)  { $index in
                    NavigationLink(destination: DetailViewCategory()) {
                            Image(index.image)
                                .resizable()
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .frame(width: 175, height: 120)
                    }
                }
            }
            .padding()
        })
    }
}

#Preview {
    AlbumCollection()
}
