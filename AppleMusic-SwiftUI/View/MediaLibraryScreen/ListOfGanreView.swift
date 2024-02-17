//
//  ListOfGanre.swift
//  AppleMusic-SwiftUI
//
//  Created by Никита Шиляев on 01.02.2024.
//

import SwiftUI

struct ListOfGanreView: View {

    @ObservedObject var ganresModel = ObservableClass()

    var body: some View {
        List {
            ForEach(ganresModel.ganres) { ganres in
                HStack {
                    Button {
                        ganresModel.selectedGanre(ganre: ganres)
                    } label: {
                        Image(systemName: ganres.isFavorite ? "circle" : "checkmark.circle.fill")
                    }
                    Image(systemName: ganres.icon)
                    Text(ganres.name)
                }
            }
            .onMove(perform: { indices, newOffset in
                ganresModel.move(from: indices, to: newOffset)
            })
        }
        .foregroundStyle(.red)
        .listStyle(.inset)
        .environment(\.editMode, .constant(.active))
    }
}

#Preview {
    ListOfGanreView()
}
