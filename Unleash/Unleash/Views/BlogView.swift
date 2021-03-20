//
//  BlogView.swift
//  Unleash
//
//  Created by Cédric Bahirwe on 20/03/2021.
//

import SwiftUI

struct BlogView: View {
    let image: String
    
    var headerView: some View {
        VStack(spacing: 16) {
            Text("20 December 2020")
                .foregroundColor(.black)
                .fontWeight(.light)
            
            Text("Behind 1 Billion")
                .font(.system(size: 35, weight: .black))
                .foregroundColor(.black)
            
            Text("We caught up with contributor\nUpgrade Photography on how it feels to have reached 2 billion views on Unleash.")
                .font(.system(size: 20))
                .foregroundColor(.gray)
                .padding(.horizontal)
                .multilineTextAlignment(.center)
            
            HStack {
                Image("kivu")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                Text("Alex Begin")
                    .fontWeight(.light)
                    .font(.callout)
            }
        }
        .padding(.vertical, 60)
        .layoutPriority(2)
    }
    var body: some View {
        VStack {
            ScrollView {
                VStack(spacing: 0) {
                    headerView

                    
                    VStack {
                        Image(image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        HStack(spacing: 0) {
                            
                            Link("Unleashed", destination: URL(string: "https://github.com/cedricbahirwe/Unleash")!)
                                .overlay(Color.gray.frame(height: 0.5), alignment: .bottom)
                            Text(" by ")
                            Link("Cédric Bahirwe", destination: URL(string: "https://github.com/cedricbahirwe")!)
                                .overlay(Color.gray.frame(height: 0.5), alignment: .bottom)
                                
                        }
                        .font(.caption)
                        .foregroundColor(.gray)

                        
                        
                        Text("It’s not every day that a contributor reaches 1 billion views. If we’re totally honest, it wasn’t a milestone we ever even fathomed when Unsplash first started. But here we are! And not one but 25 contributors have shattered our expectations in a massive way. \n\nIn the first part of our  “Behind 1 Billion” mini series, we spoke to contributor Eberhard Grossgasteiger. He's recently reached 2 billion views (!), so we caught up with him about how it feels to ")
                            .padding()
                            .font(.callout)
                            .layoutPriority(1)

                        
                    }
                    .layoutPriority(1)

                }
            }
            .frame(maxWidth: .infinity)

            .background(Color.white)
            .foregroundColor(.black)
        }
        .navigationBarTitle(
            Text("Unleash Blog"),
            displayMode: .inline)
        .navigationBarHidden(false)
    }
}

struct BlogView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BlogView(image: "analog")
        }
    }
}
