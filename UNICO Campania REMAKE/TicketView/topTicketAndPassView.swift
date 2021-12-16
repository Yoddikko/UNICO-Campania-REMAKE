//
//  topTicketAndPassView.swift
//  UNICO Campania REMAKE
//
//  Created by Alessio Iodice on 16/12/21.
//

import SwiftUI

struct topTicketAndPassView: View {
    var body: some View {
        ZStack {
            if #available(iOS 15.0, *) {
                LinearGradient(gradient: Gradient(colors: [.blue, .cyan]), startPoint: .top, endPoint: .bottom)
                    .frame(width: 500, height: 200, alignment: .top)
                    .ignoresSafeArea()
            } else {
                // Fallback on earlier versions
            }
            VStack {
                Text("Tickets and pass")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .padding(.top, 50)
                    .padding(.trailing, 110)
            }
        }
    }
}

struct topTicketAndPassView_Previews: PreviewProvider {
    static var previews: some View {
        topTicketAndPassView()
    }
}
