//
//  ImageDetailView.swift
//  Unleash
//
//  Created by Cédric Bahirwe on 21/03/2021.
//

import SwiftUI

struct ImageDetailView: View {
    
    let image: String
    
    @State private var offset = CGSize.zero
    @State private var showPopOver = false
    @State private var showOptions = true
    @State var scale: CGFloat = 1.0
    
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack {
            
            VStack {
                Spacer()
                Image(uiImage: UIImage(named: image) ?? .init())
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(scale)
//                        .frame(width: size.width)
                    .offset(offset)
                    .highPriorityGesture(
                        DragGesture()
                            .onChanged { self.offset = $0.translation }
                            .onEnded { self.offset = $0.translation }
                    )
                    .gesture(
                        MagnificationGesture()
                            .onChanged { self.scale = $0.magnitude  }
                    )
                    .onLongPressGesture {
                        showPopOver.toggle()
                    }
                    .contextMenu(ContextMenu(menuItems: {
                        VStack {
                            Button(action: {
                                presentationMode.wrappedValue.dismiss()
                            }, label: {
                                    Image(systemName: "trash")
                                        .foregroundColor(.red)
                                    Text("Delete")
                                
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                Image(systemName: "person.fill")
                                    .foregroundColor(.red)
                                Text("Tag")
                            })
                            
                        }

                    }))
                Spacer()
            }
            .contentShape(Rectangle())
            .onTapGesture {
                withAnimation { showOptions.toggle() }
            }

            VStack {
                HStack {
                    
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "multiply")
                            .font(.title3)
                            .foregroundColor(.white)
                            .padding()

                    })
                    Spacer()
                    Text(image.dropFirst(3).dropLast(4).capitalized)
                        .fontWeight(.semibold)
                    Spacer()
                    Button(action: actionShareSheet) {
                        Image(systemName: "square.and.arrow.up")
                            .font(.title3)
                            .foregroundColor(.white)
                            .padding()

                    }
                }
//                .padding(.horizontal)
                .opacity(showOptions ? 1 : 0)
                Spacer()
                
                HStack {
                    Image(systemName: "info.circle")
                        .font(.title3)
                    Spacer()
                    
                    ZStack {
                        Image(systemName: "arrow.down")
                            .resizable()
                            .foregroundColor(.black)
                            .padding(14)
                            .frame(width: 50, height: 50)
                            .background(Color.white)
                            .clipShape(Circle())
                        
                        Image(systemName: "plus")
                            .resizable()
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 50, height: 50)
                            .background(Color(.darkGray).opacity(0.5))
                            .clipShape(Circle())
                            .offset(y: -58)

                        
                        Image(systemName: "suit.heart.fill")
                            .resizable()
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 50, height: 50)
                            .background(Color(.darkGray).opacity(0.5))
                            .clipShape(Circle())
                            .offset(y: -116)
                            .zIndex(10)
                    }
                    
                    
                }
                .padding()
                .padding(.bottom)
                .opacity(showOptions ? 1 : 0)

            }
            
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
    
    private func actionShareSheet() {
        print("sharing")
        let img = UIImage(named: image)
        let msg = "Please Checkout Unleash, a photo sharing"
        let link = URL(string: "https://github.com/cedricbahirwe/Unleash")!
        let av = UIActivityViewController(activityItems: [img, msg], applicationActivities: nil)
        av.completionWithItemsHandler = { (nil, completed, _, error) in
            if completed {
                print("Completed")
            } else {
                print("Canceled")
            }
        }
        print("Crum")
        UIApplication.shared.windows.first?.rootViewController?.present(av, animated: true, completion: nil)
    }
}

struct ImageDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ImageDetailView(image: "analog")
    }
}
