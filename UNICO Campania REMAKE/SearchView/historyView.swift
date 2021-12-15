//
//  historyView.swift
//  UNICO Campania REMAKE
//
//  Created by Alessio Iodice on 15/12/21.
//

import SwiftUI

struct historyView: View {
    var body: some View {
        List {
            Section(header: Text("History")) {
                HStack {
                    Image("trenitaliaPiccolo")
                        .resizable()
                        .frame(width: 20, height: 30)
                        .padding(.trailing)
                    Text("Napoli Piazza Cavour")
                    Image(systemName: "chevron.right")
                        .padding(.trailing)
                    Text("Napoli San Giovanni-Barra")
                    Spacer()
                    if #available(iOS 15.0, *) {
                        Image(systemName: "pin.fill")
                            .foregroundColor(.cyan)
                    } else {
                        // Fallback on earlier versions
                    }
                }
                HStack {
                    if #available(iOS 15.0, *) {
                        Image("eav")
                            .resizable()
                            .frame(width: 20, height: 30)
                            .padding(.trailing)
                        Text("Napoli Piazza Garibaldi")
                        Image(systemName: "chevron.right")
                            .padding(.trailing)
                        Text("Napoli San Giorgio")
                        Spacer()
                        Image(systemName: "pin")
                            .foregroundColor(.cyan)
                    } else {
                        // Fallback on earlier versions
                    }
                }
                
            }
        }
    }
}



struct historyView_Previews: PreviewProvider {
    static var previews: some View {
        historyView()
    }
}
