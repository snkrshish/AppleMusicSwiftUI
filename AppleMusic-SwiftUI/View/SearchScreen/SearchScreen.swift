//
//  SwiftUIView.swift
//  AppleMusic-SwiftUI
//
//  Created by Никита Шиляев on 06.02.2024.
//

import SwiftUI

struct SwiftUIView: View {
    
    
    
    var body: some View {
        NavigationView {
            AlbumCollection()
                .navigationTitle("Поиск")
        }
    }
}

#Preview {
    SwiftUIView()
}
