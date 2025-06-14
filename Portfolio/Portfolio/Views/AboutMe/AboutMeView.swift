//
//  AboutView.swift
//  Portfolio
//
//  Created by Yanet Rodriguez on 13/06/2025.
//

import SwiftUI

struct AboutMeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                Text("About Me")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom)

                Text("💼 Professional Summary")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("I’m a mobile application developer with experience building native iOS and Android apps using Swift and Kotlin. I'm currently expanding my skills in cross-platform development with .NET MAUI and Kotlin Multiplatform (KMP).")
                    .font(.body)
                    .multilineTextAlignment(.leading)

                Text("📐 Development Philosophy")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("I’m passionate about creating user-friendly, high-performance, and scalable mobile experiences. I follow clean architecture principles and the MVVM pattern to ensure code maintainability and modularity.")
                    .font(.body)
                    .multilineTextAlignment(.leading)
                
                Text("🚀 What Drives Me")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("I enjoy working on impactful projects, collaborating with cross-functional teams, and staying up-to-date with the latest trends in mobile development. My goal is to continuously improve as a developer and build products that users love.")
                    .font(.body)
                    .multilineTextAlignment(.leading)
                
                Text("✅ Soft Skills")
                    .font(.title2)
                    .fontWeight(.semibold)

                VStack(alignment: .listRowSeparatorLeading, spacing: 12) {
                    SkillTag(icon: "person.3.fill", title: "Team collaboration")
                    SkillTag(icon: "lightbulb.fill", title: "Clear communication")
                    SkillTag(icon: "hammer.fill", title: "Problem-solving mindset")
                    SkillTag(icon: "book.fill", title: "Continuous learning")
                }
            }
            .padding()
        }
        .background(Color("white"))
        .navigationTitle("About Me")
    }
}

// MARK: - Skill Tag View
struct SkillTag: View {
    let icon: String
    let title: String

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: icon)
                .foregroundColor(Color("green"))
            Text(title)
                .font(.body)
        }
    }
}

#Preview {
    NavigationStack {
        AboutMeView()
    }
}
