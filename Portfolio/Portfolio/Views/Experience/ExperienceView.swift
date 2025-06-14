//
//  ExperienceView.swift
//  Portfolio
//
//  Created by Yanet Rodriguez on 13/06/2025.
//

import SwiftUI

struct ExperienceView: View {
    let experiences: [Experience] = [
        Experience(
            company: "Flow",
            role: "Mobile Developer",
            period: "2022 - presente",
            technologies: ["Swift", "Kotlin", ".NET MAUI", "Firebase", "GitHub", "Jira"],
            description: "Migración de apps, desarrollo de nuevas funcionalidades, colaboración en arquitectura y liderazgo técnico en proyectos clave."
        ),
        Experience(
            company: "Telecom",
            role: "Trainee Mobile Developer",
            period: "2021 - 2022",
            technologies: ["Kotlin", "Firebase", "MVVM"],
            description: "Colaboración en apps Android, mantenimiento y soporte, testing y primeras responsabilidades de desarrollo móvil."
        )
    ]

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Experiencia")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom)

                ForEach(experiences) { exp in
                    ExperienceCard(experience: exp)
                }
            }
            .padding()
        }
        .background(Color("white"))
        .navigationTitle("Experiencia")
    }
}

// MARK: - Tarjeta de experiencia
struct ExperienceCard: View {
    let experience: Experience

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(experience.company)
                .font(.title3)
                .fontWeight(.semibold)

            Text("\(experience.role) • \(experience.period)")
                .font(.subheadline)
                .foregroundColor(.secondary)

            Text(experience.description)
                .font(.body)

            HStack {
                ForEach(experience.technologies, id: \.self) { tech in
                    Text(tech)
                        .font(.caption)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background((Color("green")).opacity(0.1))
                        .foregroundColor(Color("green"))
                        .cornerRadius(10)
                }
            }
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(12)
        .shadow(color: .gray.opacity(0.1), radius: 4, x: 0, y: 2)
    }
}

#Preview {
    NavigationStack {
        ExperienceView()
    }
}
