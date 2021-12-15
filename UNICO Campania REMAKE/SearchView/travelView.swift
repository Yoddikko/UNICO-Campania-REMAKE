//
//  travelView.swift
//  UNICO Campania REMAKE
//
//  Created by Alessio Iodice on 15/12/21.
//

import SwiftUI

struct travelView: View {
    @State private var departure = ""
    @State private var arrival = ""
    @State private var dateDeparture = ""
    @State private var dateArrival = ""

    var body: some View {
        VStack {
            HStack {
                Image(systemName: "chevron.right.2")
                    .padding(.leading)
                    .padding(.trailing)
                TextField("Departure", text: $departure)
                    .padding(.all, 20)
                    .background(Color("customGray"))
                    .cornerRadius(10)
                    .padding(.trailing)
                Spacer()
            }.padding(.bottom)
            HStack {
                Image(systemName: "chevron.left.2")
                    .padding(.leading)
                    .padding(.trailing)
                TextField("Arrival", text: $arrival)
                    .padding(.all, 20)
                    .background(Color("customGray"))
                    .cornerRadius(10)
                    .padding(.trailing)
                Spacer()
            }.padding(.bottom)
            HStack {
                Image(systemName: "calendar")
                    .padding(.leading)
                    .padding(.trailing)
                TextField("Today, now", text: $dateDeparture)
                    .padding(.all, 20)
                    .frame(width: 154)
                    .background(Color("customGray"))
                    .cornerRadius(10)
                    .padding(.trailing)
                TextField("Arrival date", text: $dateArrival)
                    .foregroundColor(.white)
                    .padding(.all, 20)
                    .frame(width: 154)
                    .background(Color("customGray"))
                    .cornerRadius(10)
                    .padding(.trailing)
                
                Spacer()
            }.padding(.bottom)
            Button {
                
            } label: {
                ZStack {
                    if #available(iOS 15.0, *) {
                        Rectangle()
                            .cornerRadius(10)
                            .frame(width: 380, height: 70)
                            .foregroundColor(.cyan)
                        Text("Find")
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                    } else {
                        // Fallback on earlier versions
                    }
                }
            }
        }
    }
}

struct travelView_Previews: PreviewProvider {
    static var previews: some View {
        travelView()
    }
}
