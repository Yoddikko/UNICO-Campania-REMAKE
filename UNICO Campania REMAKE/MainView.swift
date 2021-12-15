//
//  MainView.swift
//  UNICO Campania REMAKE
//
//  Created by Alessio Iodice on 09/12/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        if #available(iOS 15.0, *) {
            TabView {
                if #available(iOS 15.0, *) {
                    SearchView()
                        .tabItem {
                            Label("Search", systemImage: "magnifyingglass")
                        }
                    // Fallback on earlier versions
                }
                TicketView()
                    .tabItem {
                        Label("Tickets", systemImage: "ticket")
                    }
                profileView()
                    .tabItem {
                        Label("Profile", systemImage: "person")
                    }
            }
            .accentColor(.cyan)
        } else {
            // Fallback on earlier versions
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
