//
//  LibraryView.swift
//  AppleMusic-SwiftUI
//
//  Created by Никита Шиляев on 29.01.2024.
//

import SwiftUI

struct LibraryView: View {

    @State var editMode = true
    @State var labelText = "Править"

    var body: some View {

        NavigationView(content: {
            VStack {
                ZStack {
                    MyPlaylistView()
                        .opacity(editMode ? 1 : 0)
                    ListOfGanreView()
                        .opacity(!editMode ? 1 : 0)
                }
                    .navigationTitle("Медиатека")
                    .toolbar {
                        Button {
                            labelText = editMode ? "Готово" : "Править"
                            editMode.toggle()
                        } label: {
                            Text(labelText)
                                .tint(.red)
                        }
                    }
            }
        })
    }
}

#Preview {
    LibraryView()
}
