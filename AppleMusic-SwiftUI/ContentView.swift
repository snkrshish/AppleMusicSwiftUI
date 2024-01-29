//
//  ContentView.swift
//  AppleMusic-SwiftUI
//
//  Created by Никита Шиляев on 29.01.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            LibraryView()
            .tabItem {
                Image(systemName: "play.square.stack")
                Text("Медиатека")
            }
            Text("OLOLOL")
                .tabItem {
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Text("Радио")
                }
            Text("LOLOLO")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Поиск")
                }
        }
    }
}

#Preview {
    ContentView()
}
