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
                    Spacer()

                    Image("yanet_avatar")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 140, height: 140)
                        .clipShape(Circle())
                        .shadow(radius: 10)

                    Text("Yanet Rodriguez")
                        .font(.title)
                        .fontWeight(.bold)

                    Text("Cross-Platform Mobile Developer")
                        .font(.subheadline)
                        .foregroundColor(.secondary)

                    Text("Building seamless mobile experiences using Swift, Kotlin, and .NET MAUI.")
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)

                    Spacer()

                    NavigationLink(destination: ProjectsView()) {
                        Text("Explore My Projects")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color("green"))
                            .cornerRadius(12)
                            .padding(.horizontal)
                    }

                    Spacer()
                }
                .padding()
                .navigationTitle("Welcome")
            }
        }
    }
}

#Preview {
    HomeView()
}
