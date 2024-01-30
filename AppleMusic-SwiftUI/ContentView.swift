//
//  ContentView.swift
//  AppleMusic-SwiftUI
//
//  Created by Никита Шиляев on 29.01.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            TabView {
                LibraryView()
                    .tabItem {
                        Image(systemName: "play.square.stack")
                        Text("Медиатека")

                    }
                Text("Radio")
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                Text("Search")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            .tint(.red)
            PlayerWindow()
        }
    }
}

#Preview {
    ContentView()
}
