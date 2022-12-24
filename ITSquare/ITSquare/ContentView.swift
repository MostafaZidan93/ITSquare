//
//  ContentView.swift
//  ITSquare
//
//  Created by M.M.Z on 24/12/2022.
//

import SwiftUI
//test
struct ContentView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Label("Feeds", systemImage: "newspaper")
                    Text("Hello World")
                }
            
            Categories()
                .tabItem {
                    Label("Categories", systemImage: "folder.fill")
                }
            
            HotOffers()
                .tabItem {
                    Label("Hot Offers", systemImage: "flame.fill")
                }
            
            About()
                .tabItem {
                    Label("About", systemImage: "info.bubble")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
