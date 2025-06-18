//
//  MainTabView.swift
//  Portfolio
//
//  Created by Yanet Rodriguez on 13/06/2025.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                
            AboutMeView()
                .tabItem {
                    Label("About Me", systemImage: "person.text.rectangle")
                }

            ExperienceView()
                .tabItem {
                    Label("Experience", systemImage: "briefcase.fill")
                }
            
            ContactView()
                .tabItem{
                    Label("Contact", systemImage: "envelope.fill")
                }
        }
        .accentColor(Color("green"))
    }
}

#Preview {
    MainTabView()
}
