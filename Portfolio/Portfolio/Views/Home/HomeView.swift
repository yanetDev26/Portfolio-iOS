//
//  HomeView.swift
//  Portfolio
//
//  Created by Yanet Rodriguez on 13/06/2025.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("white")
                    .ignoresSafeArea()
                
                VStack(spacing: 24) {
                    Image("yanet_avatar")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 140, height: 140)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                    
                    Text("Yanet Rodriguez")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("iOS & Android Developer")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("Apasionada por crear experiencias móviles de alto impacto. Desarrollo multiplataforma con .NET MAUI, Swift y Kotlin.")
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    
                    HStack(spacing: 24) {
                        SocialButton(icon: "link", title: "LinkedIn") {
                            openURL("https://www.linkedin.com/in/yanetrodriguez/?locale=en_US")
                        }
                        
                        SocialButton(icon: "envelope.fill", title: "Email") {
                            openURL("yane.rodriguez26@gmail.com")
                        }
                        
                        SocialButton(icon: "gearshape.fill", title: "GitHub") {
                            openURL("https://github.com/yanetDev26")
                        }
                    }
                }
                .padding()
                .navigationTitle("Mi Portfolio")
            }
        }
    }

    private func openURL(_ urlString: String) {
        if let url = URL(string: urlString) {
            UIApplication.shared.open(url)
        }
    }
}

// MARK: - Social Button Component
struct SocialButton: View {
    let icon: String
    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            VStack {
                Image(systemName: icon)
                    .font(.title)
                    .foregroundColor(Color("green"))
                Text(title)
                    .font(.caption)
            }
        }
    }
}

#Preview {
    HomeView()
}
