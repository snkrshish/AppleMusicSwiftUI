//
//  FirstCollectionView.swift
//  AppleMusic-SwiftUI
//
//  Created by Никита Шиляев on 09.02.2024.
//

import SwiftUI



struct FeaturedCategories: View {

    @ObservedObject var featuredModel = CategoriesModel()

    let rowsFeatured = [
        GridItem(.fixed(280))
    ]

    var body: some View {
        VStack {
            HStack {
                Text("Главное")
                    .font(.title)
                    .bold()
                Spacer()
            }
            .padding(.leading)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: rowsFeatured) {
                    ForEach(featuredModel.featuredCategories) { model in
                        VStack(alignment: .leading) {
                            Divider()

                            Text(model.descriprion!.rawValue.uppercased())
                                .font(.footnote)
                                .foregroundColor(.gray)
                            Text(model.name)
                                .font(.title3)
                            Text(model.secondDescription!.rawValue)
                                .font(.title3)
                                .foregroundColor(.gray)
                            Image(model.image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    }
                }
            }
            .padding(.leading)

            Divider()
                .padding(.top, -50)
        }
    }
}

#Preview {
    FeaturedCategories()
}
