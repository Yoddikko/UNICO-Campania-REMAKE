//
//  topBackgroundView.swift
//  UNICO Campania REMAKE
//
//  Created by Alessio Iodice on 15/12/21.
//

import SwiftUI

struct topBackground: View {
    var body: some View {
        ZStack {
            if #available(iOS 15.0, *) {
                LinearGradient(gradient: Gradient(colors: [.blue, .cyan]), startPoint: .top, endPoint: .bottom)
                    .frame(width: 500, height: 200, alignment: .top)
                    .ignoresSafeArea()
                VStack {
                    Text("Find ticket")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .padding(.top, 50)
                        .padding(.trailing, 200)
                }
            } else {
                // Fallback on earlier versions
            }
        }
    }
}



struct topBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        topBackground()
    }
}
