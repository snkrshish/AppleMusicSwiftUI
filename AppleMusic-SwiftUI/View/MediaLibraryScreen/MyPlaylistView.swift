//
//  MyPlaylistView.swift
//  AppleMusic-SwiftUI
//
//  Created by Никита Шиляев on 02.02.2024.
//

import SwiftUI

struct MyPlaylistView: View {
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
    MyPlaylistView()
}
