//
//  SignUpView.swift
//  Unleash
//
//  Created by Cédric Bahirwe on 18/03/2021.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Join Unleash")
                    .font(.system(size: 33, weight: .bold))
                    .padding(.vertical, 20)
                VStack(spacing: 5) {
                    TextField("First name", text: .constant("First name"))
                        .frame(height: 30)
                        .foregroundColor(.gray)
                    
                    Color.gray.frame(height: 0.5)
                }
                .padding(.vertical)
                VStack(spacing: 5) {
                    TextField("Last name", text: .constant("Last name"))
                        .frame(height: 30)
                        .foregroundColor(.gray)
                    
                    Color.gray.frame(height: 0.5)
                }
                .padding(.vertical)
                VStack(spacing: 5) {
                    TextField("Email name", text: .constant("Email"))
                        .frame(height: 30)
                        .foregroundColor(.gray)
                    
                    Color.gray.frame(height: 0.5)
                }

                .padding(.vertical)
                VStack(spacing: 8) {
                    TextField("Password", text: .constant("Password"))
                        .frame(height: 30)
                    Color.gray.frame(height: 0.5)
                }
                .foregroundColor(.gray)
                
                
                Button(action: {
                    
                }, label: {
                    Text("Sign Up")
                        .foregroundColor(.black)
                        .font(.system(size: 14, weight: .medium))
                        .frame(maxWidth: .infinity)
                        .frame(height: 42)
                        .background(Color.white)
                        .cornerRadius(3)
                    
                })
                
                HStack(spacing: 2) {
                    Text("By joining you agree to the")
                        .foregroundColor(.gray)
                    Text("Terms")
                    Text("and")
                        .foregroundColor(.gray)
                    Text("Privacy Policy.")
                    
                }
                .font(.system(size: 13, weight: .regular))
                .frame(maxWidth: .infinity)
            }
            .font(.system(size: 16))
            .padding()
        }
        .background(Color.black.ignoresSafeArea())
        .foregroundColor(.white)
        .navigationBarTitle("Login", displayMode: .inline)
        .navigationBarHidden(false)
        .colorScheme(.dark)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
