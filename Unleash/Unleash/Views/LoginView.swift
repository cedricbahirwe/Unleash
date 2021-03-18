//
//  LoginView.swift
//  Unleash
//
//  Created by Cédric Bahirwe on 14/03/2021.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    VStack(spacing: 5) {
                        TextField("Email", text: .constant("Email"))
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
                        Text("Log In")
                            .foregroundColor(.black)
                            .font(.system(size: 14, weight: .medium))
                            .frame(maxWidth: .infinity)
                            .frame(height: 42)
                            .background(Color.white)
                            .cornerRadius(3)
                        
                    })
                    
                    Text("Forgot your password?")
                        .font(.caption)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical)
                    
                    HStack(spacing: 2) {
                        Text("Don't have an account?")
                        
                        NavigationLink(destination: SignUpView()) {
                            Text("Join")
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .font(.system(size: 18))
                    
                    
                }
                .font(.system(size: 16))
                .padding()
            }
            .navigationBarTitle("Login")
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
