//
//  ContributionView.swift
//  Unleash
//
//  Created by Cédric Bahirwe on 15/03/2021.
//

import SwiftUI

struct ContributionView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Contribute to Unleash")
                    .font(.system(size: 20, weight: .bold))
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 3, lineCap: .square, lineJoin: .miter, miterLimit: 10, dash: [10, 10], dashPhase: 1))
                        .frame(height: 250)
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
            Spacer()
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
        .foregroundColor(.white)
    }
}

struct ContributionView_Previews: PreviewProvider {
    static var previews: some View {
        ContributionView()
    }
}
