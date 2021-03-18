//
//  HomeView.swift
//  Unleash
//
//  Created by Cédric Bahirwe on 18/03/2021.
//

import SwiftUI

struct HomeView: View {
    @State private var showAboutPage: Bool = false
    var body: some View {
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
                Text("Unleash")
                    .font(.system(size: 24, weight: .bold))
                Spacer()
            }
            .padding()
            Spacer()
        }
        .sheet(isPresented: $showAboutPage) {
            AboutView()
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
