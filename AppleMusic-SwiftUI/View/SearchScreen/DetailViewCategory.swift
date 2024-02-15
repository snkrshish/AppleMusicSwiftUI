//
//  DetailViewCategory.swift
//  AppleMusic-SwiftUI
//
//  Created by Никита Шиляев on 07.02.2024.
//

import SwiftUI

struct DetailViewCategory: View {
    var body: some View {

            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 60) {
                    FeaturedCategories()
                        .frame(height: 200)
                        .padding(.vertical)
                    FeaturedPlaylist()
                }
            }
        }
}

#Preview {
    DetailViewCategory()
}
