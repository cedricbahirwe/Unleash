//
//  AboutView.swift
//  Unleash
//
//  Created by Cédric Bahirwe on 18/03/2021.
//

import SwiftUI

struct AboutView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Done")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                })
            }
            .padding(.top, 8)
            
            VStack {
                Image(systemName: "lasso.sparkles")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 60)
                Text("Unleash")
                    .font(.system(size: 26, weight: .bold))
                Text("v.1.0.0")
                    .foregroundColor(.gray)
                    .font(.caption)
            }
            .foregroundColor(.white)
            VStack(alignment: .leading, spacing: 20) {
                Button(action: {
                    
                }, label: {
                    Text("Recommend Unleash")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .frame(height: 28)
                        .foregroundColor(.white)
                })
                Button(action: {
                    
                }, label: {
                    Text("Write a review")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .frame(height: 28)
                        .foregroundColor(.white)
                })
                
                Color.gray.frame(height: 0.5)
                Button(action: {
                    
                }, label: {
                    Text("Visit Unleash.com")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .frame(height: 28)
                        .foregroundColor(.white)
                })
                
                Button(action: {
                    
                }, label: {
                    Text("License")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .frame(height: 28)
                        .foregroundColor(.white)
                })
                Color.gray.frame(height: 0.5)

                
            }
            .padding(.top, 30)

            Spacer()
        }
        .padding(10)
        .background(Color.black.opacity(0.95))
        .preferredColorScheme(.light)
        
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView().preferredColorScheme(.light)
    }
}
