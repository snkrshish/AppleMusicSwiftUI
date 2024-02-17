//
//  ContentView.swift
//  AppleMusic-SwiftUI
//
//  Created by Никита Шиляев on 29.01.2024.
//

import SwiftUI

struct ContentView: View {

    @State var expand = false
    @Namespace var animation

    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            TabView {
                LibraryView()
                    .tabItem {
                        Image(systemName: "play.square.stack")
                        Text("Медиатека")
                    }
                RadioScreen()
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                SearchScreen()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            .tint(.red)
            PlayerWindow(expand: $expand, animation: animation)
        }
    }
}

#Preview {
    ContentView()
}
