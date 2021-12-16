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
            topTicketAndPassView()
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
                Spacer()
                buttonView(text: "Buy pass")
            }
            if passOrTicketPick == "Ticket" {
                VStack {
                    Spacer()
                    Text("No tickets")
                        .foregroundColor(.secondary)
                    Spacer()
                    buttonView(text: "Buy ticket")
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
