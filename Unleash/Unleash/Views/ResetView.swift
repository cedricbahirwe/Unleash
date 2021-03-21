//
//  ResetView.swift
//  Unleash
//
//  Created by Cédric Bahirwe on 20/03/2021.
//

import SwiftUI

struct ResetView: View {
    @Binding var isAlerted: Bool
    var body: some View {
        VStack(alignment: .leading, spacing: 18) {
            Text("Reset Password")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 10)
            VStack(spacing: 5) {
                TextField("Email", text: .constant("Email"))
                    .frame(height: 30)
                    .foregroundColor(.gray)
                
                Color.gray.frame(height: 0.5)
            }
            
            Button(action: {
                
            }, label: {
                Text("Reset")
                    .foregroundColor(.black)
                    .font(.system(size: 14, weight: .medium))
                    .frame(maxWidth: .infinity)
                    .frame(height: 42)
                    .background(Color.white)
                    .cornerRadius(5)
                
            })
            Spacer()
        }
        .padding(.horizontal)
        .offset(y: -45)
        .navigationBarTitle(isAlerted ? "Reset Unleash" : "", displayMode: isAlerted ? .inline : .automatic)

    }
}

struct ResetView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ResetView(isAlerted: .constant(false))
        }
    }
}
