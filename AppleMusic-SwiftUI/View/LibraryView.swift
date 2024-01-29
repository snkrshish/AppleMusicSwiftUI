//
//  LibraryView.swift
//  AppleMusic-SwiftUI
//
//  Created by Никита Шиляев on 29.01.2024.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {

        VStack {
            Text("Ищете свою музыку?")
                .bold()
                .font(.title)
            Text("Здесь появится купленная Вами в iTunes Store музыка ")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}

#Preview {
    LibraryView()
}
