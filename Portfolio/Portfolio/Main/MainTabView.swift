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
                    Label("Inicio", systemImage: "house.fill")
                }
                
            AboutMeView()
                .tabItem {
                    Label("Sobre Mí", systemImage: "person.text.rectangle")
                }

            ExperienceView()
                .tabItem {
                    Label("Experiencia", systemImage: "briefcase.fill")
                }
            
            ContactView()
                .tabItem{
                    Label("Contacto", systemImage: "envelope.fill")
                }
        }
        .accentColor(Color("green"))
    }
}

#Preview {
    MainTabView()
}
