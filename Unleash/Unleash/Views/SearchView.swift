//
//  SearchView.swift
//  Unleash
//
//  Created by Cédric Bahirwe on 18/03/2021.
//

import SwiftUI

struct SearchView: View {
    @State private var isEditing = false
    @State private var pickerSelection = 1
    @State private var searchText = ""
    var body: some View {
        VStack {
            HStack {
                TextField("Search Photos", text: $searchText, onCommit: {
                    withAnimation {
                        isEditing = false
                    }
                })
                    .frame(height: 35)
                    .padding(.leading, 30)
                    .background(Color(.systemGray6))
                    .cornerRadius(7)
                    .overlay(
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(.gray)
                                .padding(8)
                                .frame(width: 30, height: 30)
                            Spacer()
                            if !searchText.isEmpty  {
                                Button(action: {
                                    withAnimation {
                                        searchText = ""
                                    }
                                }) {
                                    Image(systemName: "multiply.circle.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .foregroundColor(.gray)
                                        .padding(8)
                                        .frame(width: 30, height: 30)
                                }
                            }
                            
                        }
                        , alignment: .leading
                )
                    .onTapGesture {
                        withAnimation {
                            isEditing = true
                        }
                    }
                if isEditing {
                    Image(systemName: "keyboard.chevron.compact.down")
                        .onTapGesture {
                            withAnimation {
                                isEditing = false
                            }
                            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                        }
                } else if pickerSelection == 1 {
                    Image(systemName: "text.redaction")
                }
                
            }
            
            Picker("", selection: $pickerSelection.animation()) {
                Text("Photos").tag(1)
                Text("Collections").tag(2)
                Text("Users").tag(3)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.vertical,5)
            
            
            
            ScrollView {
                VStack {
                    Section(header:
                                HStack{
                                    Text("Recent")
                                        .font(.system(size: 22, weight: .bold))
                                    Spacer()
                                    Button(action: {}, label: {
                                        Text("Clear")
                                            .foregroundColor(.white)
                                    })
                                }
                                .padding(.vertical, 3)
                    ) {
                        VStack {
                            ForEach(0..<5) { i in
                                Button(action: {
                                    searchText = String(i)
                                }){
                                    VStack(alignment: .leading, spacing: 6) {
                                        Text("recent \(i)")                                            .font(.system(size: 19, weight: .regular))
                                        Color.gray.frame(height: 0.5)
                                    }
                                    .foregroundColor(.white)
                                }
                            }
                        }
                        .padding(.bottom)
                    }
                    
                    if pickerSelection == 1 {
                        Section(header:
                                    HStack{
                                        Text("Trending")
                                            .font(.system(size: 22, weight: .bold))
                                        Spacer()
                                        Button(action: {}, label: {
                                            Text("Clear")
                                                .foregroundColor(.white)
                                        })
                                        .hidden()
                                    }
                                    .padding(.vertical, 3)
                        ) {
                            ForEach(0..<5) { i in
                                Button(action: {
                                    searchText = String(i)
                                }){
                                    VStack(alignment: .leading, spacing: 6) {
                                        Text("trending \(i+1)")
                                            .font(.system(size: 19, weight: .regular))
                                        Color.gray.frame(height: 0.5)
                                    }
                                    .foregroundColor(.white)
                                }
                                

                            }
                        }
                    }
                   
                }
                .padding(.trailing, 8)
            }
        }
        .padding(10)
        .preferredColorScheme(.dark)
        
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
