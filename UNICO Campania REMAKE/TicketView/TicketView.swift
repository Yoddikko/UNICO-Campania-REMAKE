//
//  TicketView.swift
//  UNICO Campania REMAKE
//
//  Created by Alessio Iodice on 09/12/21.
//

import SwiftUI

struct TicketView: View {
    @State private var passOrTicketPick = "Pass"
    var passOrTicket = ["Pass", "Ticket"]
    var body: some View {
        VStack {
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
            HStack {
                Picker("", selection: $passOrTicketPick) {
                    ForEach(passOrTicket, id: \.self) {
                        Text($0)
                    }
                }
                .padding()
                .pickerStyle(.segmented)
            }
            Spacer()
            if passOrTicketPick == "Pass" {
                passView()
            }
            if passOrTicketPick == "Ticket" {
                VStack {
                    Spacer()
                    Text("No tickets")
                        .foregroundColor(.secondary)
                    Spacer()
                }
            }
            
        }
    }
}

struct TicketView_Previews: PreviewProvider {
    static var previews: some View {
        TicketView()
    }
}
