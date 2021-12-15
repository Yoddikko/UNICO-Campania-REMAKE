//
//  ContentView.swift
//  UNICO Campania REMAKE
//
//  Created by Alessio Iodice on 09/12/21.
//

import SwiftUI

@available(iOS 15.0, *)

struct SearchView: View {
    
    var body: some View {
        VStack {
            topBackground()
            travelView()
            historyView()
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, *) {
            SearchView().preferredColorScheme(.light)
            //            SearchView().preferredColorScheme(.dark)
        } else {
            // Fallback on earlier versions
        }
    }
}
