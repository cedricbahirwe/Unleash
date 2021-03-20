//
//  ContributionView.swift
//  Unleash
//
//  Created by Cédric Bahirwe on 15/03/2021.
//

import SwiftUI

struct ContributionView: View {
    private let images = ["kivu", "analog", "code", "smoke", "universe"]
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading) {
                    Text("Contribute to Unleash")
                        .font(.system(size: 22, weight: .bold))
                        .padding(.top, 40)
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 3, lineCap: .square, lineJoin: .miter, miterLimit: 10, dash: [10, 10], dashPhase: 1))
                            .frame(minHeight: 230)
                        VStack {
                            Image(systemName: "photo.on.rectangle.angled")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 80)
                                .foregroundColor(.gray)
                                .overlay(
                                    Image(systemName: "plus.circle.fill")
                                        .resizable()
                                        .renderingMode(.original)
                                        .frame(width: 25 ,height: 25)
                                    , alignment: .topTrailing
                                )
                            
                            Text("Upload your photo to the largest")
                            Text("library of open photography.")
                        }
                    }
                    
                    
                }
                .padding(10)
                VStack(alignment: .leading) {
                    Text("Latest from the blog")
                        .font(.system(size: 16, weight: .bold))
                        .padding(.leading, 10)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 0) {
                            ForEach(images, id:\.self) { image in
                                NavigationLink(
                                    destination: BlogView(image: image)) {
                                    VStack(alignment: .leading) {
                                        Image(image)
                                            .resizable()
                                            .frame(minHeight: 200)
                                            .frame(width: 300)
                                            .cornerRadius(5)
                                        VStack(alignment: .leading) {
                                            Text("Unleash + Kivu")
                                                .font(.system(size: 17, weight: .semibold))
                                            Text("Unleash Team")
                                                .font(.system(size: 14, weight: .light))
                                                .opacity(0.9)
                                        }
                                        .foregroundColor(.white)
                                    }
                                    .padding(.leading, 10)
                                }
                            }
                        }
                    }
                    .padding(.bottom, 30)
                    Spacer()

                }
                
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct ContributionView_Previews: PreviewProvider {
    static var previews: some View {
        ContributionView()
    }
}
