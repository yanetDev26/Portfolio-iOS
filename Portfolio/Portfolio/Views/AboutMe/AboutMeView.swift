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

                Text("""
Soy desarrolladora mobile multiplataforma, especializada en el desarrollo nativo de aplicaciones iOS con Swift y Android con Kotlin. También trabajo con .NET MAUI para soluciones compartidas.

Me apasiona crear experiencias móviles de alto impacto, con enfoque en calidad, performance y usabilidad. Disfruto trabajar en equipo, aprender constantemente y participar en la arquitectura de soluciones técnicas escalables.
""")
                    .font(.body)
                    .multilineTextAlignment(.leading)

                Text("Fortalezas")
                    .font(.title2)
                    .fontWeight(.semibold)

                VStack(alignment: .leading, spacing: 12) {
                    SkillTag(icon: "person.3.fill", title: "Trabajo en equipo")
                    SkillTag(icon: "lightbulb.fill", title: "Pensamiento crítico")
                    SkillTag(icon: "hammer.fill", title: "Resolución de problemas")
                    SkillTag(icon: "book.fill", title: "Aprendizaje continuo")
                }
            }
            .padding()
        }
        .background(Color("white"))
        .navigationTitle("Sobre Mí")
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
