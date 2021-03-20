//
//  HomeView.swift
//  Unleash
//
//  Created by Cédric Bahirwe on 18/03/2021.
//

import SwiftUI

struct HomeView: View {
    @State private var showAboutPage: Bool = false
    @State private var selectedTab: Int = 1
    @State private var pictures = [String]()
    
    var body: some View {
        ZStack(alignment: .top) {
            ScrollView(showsIndicators: false) {
                LazyVStack(spacing: 2, pinnedViews: []) {
                    ForEach(pictures, id: \.self) { picture in
                        Image(uiImage: UIImage(named: picture) ?? .init())
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .overlay(
                                Text(picture.dropFirst(3).dropLast(4).capitalized)
                                    .bold()
                                    .padding(10)
                                , alignment: .bottomLeading
                                
                            )
                    }
                }
            }
            
            VStack {
                HStack {
                    Image(systemName: "lasso.sparkles")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                        .onTapGesture {
                            showAboutPage.toggle()
                        }
                    Spacer()
                    Text("Unleash\(pictures.count)")
                        .font(.system(size: 24, weight: .bold))
                    Spacer()
                }
                .padding()
                
                ZStack(alignment: .bottom) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 0) {
                            ForEach(0..<10) { i in
                                VStack {
                                    Text("Editorial")
                                        .fontWeight(.semibold)
                                        .padding(.leading)
                                    
                                    Color.white
                                        .frame(height:2)
                                        .opacity(selectedTab == i+1 ? 1 : 0)
                                }
                                .contentShape(Rectangle())
                                .onTapGesture {
                                    selectedTab = i+1
                                }
                                
                            }
                        }
                    }
                    Color.white.frame(height:2).opacity(0.3)
                }
            }        }
        .sheet(isPresented: $showAboutPage) {
            AboutView()
        }
        .onAppear(perform: loadImages)
    }
    
    private func loadImages() {
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("un-") {
                let picture = item //String(item.dropFirst(3))
                pictures.append(picture)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
