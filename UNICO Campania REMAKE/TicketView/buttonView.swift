//
//  buttonView.swift
//  UNICO Campania REMAKE
//
//  Created by Alessio Iodice on 16/12/21.
//

import SwiftUI

struct buttonView: View {
    
    var text: String
    
    var body: some View {
        if #available(iOS 15.0, *) {
            Button(action: {}
                   ,label: {
                ZStack {
                    Rectangle()
                        .cornerRadius(10)
                        .frame(width: 380, height: 70)
                        .foregroundColor(.cyan)
                    Text(text)
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                }.padding()
            })
        } else {
            // Fallback on earlier versions
        }
    }
}

struct buttonView_Previews: PreviewProvider {
    static var previews: some View {
        buttonView(text: "")
    }
}
