//
//  ContentView.swift
//  Unleash
//
//  Created by Cédric Bahirwe on 14/03/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Int = 1
    var body: some View {
        TabView(selection: $selection,
                content:  {
                    HomeView().tag(1)
                        .tabItem {
                            Image(systemName: "photo.fill")
                        }
                    SearchView().tag(2)
                        .tabItem {
                            Image(systemName: "magnifyingglass")
                        }
                    ContributionView().tag(3)
                        .tabItem {
                            Image(systemName: "plus.square.fill")
                                .foregroundColor(.white)
                        }
                    LoginView().tag(4)
                        .tabItem {
                            Image(systemName: "person.crop.circle.fill")
                                .foregroundColor(.white)
                        }
                })
            .preferredColorScheme(.dark)
            .accentColor(.white)
//       LoginView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
