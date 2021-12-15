//
//  TestView.swift
//  UNICO Campania REMAKE
//
//  Created by Alessio Iodice on 13/12/21.
//

import SwiftUI

struct passView: View {
    @State var animate = false
    @State private var animationAmount = 1.0
    
    var body: some View {
        VStack {
            ZStack {
                if #available(iOS 15.0, *) {
                    LinearGradient(gradient: Gradient(colors: [.blue, .cyan]), startPoint: .topLeading, endPoint: .bottomTrailing)            .frame(width: self.animate ? 400 : 400, height: self.animate ? 400 : 200)
                        .cornerRadius(15)
                        .foregroundColor(Color("passBlue"))
                        .onTapGesture {
                            withAnimation {
                                self.animate.toggle()
                            }
                        }
                    if !animate {
                        VStack {
                            HStack {
                                Spacer()
                                Text("UNICO Campania Pass")
                                    .fontWeight(.bold)
                                    .padding(.leading)
                                Spacer()
                            }.padding(.bottom, 5)
                            Image("unico1")
                                .resizable()
                                .padding()
                                .frame(width: 200, height: 100)
                        }
                        Spacer()
                    }
                    
                    if animate {
                        VStack {
                            HStack {
                                Text("NAME AND SURNAME")
                                    .font(.subheadline)
                                    .padding(.leading, 30)
                                Spacer()
                                Text("BADGE NUMBER")
                                    .font(.subheadline)
                                    .padding(.trailing, 30)
                            }
                            HStack {
                                Text("Alessio Iodice")
                                    .font(.title)
                                    .fontWeight(.regular)
                                    .padding(.leading, 30)
                                Spacer()
                                Text("338 218 3105")
                                    .font(.title2)
                                    .fontWeight(.regular)
                                    .padding(.trailing, 30)
                            }
                            Image("qrcode")
                            HStack {
                                Image(systemName: "plus.magnifyingglass")
                                Text("Zoom in")
                            }
                            VStack {
                                HStack {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 10)
                                            .padding(.bottom)
                                            .frame(width: 300, height: 50)
                                            .foregroundColor(.mint)
                                        HStack {
                                            Text("Valid until:")
                                                .padding(.bottom)
                                            Text("31/07/2022")
                                                .fontWeight(.bold)
                                                .padding(.leading)
                                                .padding(.bottom)
                                        }
                                    }
                                }
                            }
                        }
                    }
                } else {
                    // Fallback on earlier versions
                }
            }
            Spacer()
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        passView()
    }
}
