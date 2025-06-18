//
//  PorjectsView.swift
//  Portfolio
//
//  Created by Yanet Rodriguez on 14/06/2025.
//

import SwiftUI

struct ProjectsView: View {
    let projects: [Project] = sampleProjects

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                Text("Projects")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal)

                ForEach(projects) { project in
                    ProjectCard(project: project)
                        .padding(.horizontal)
                }
            }
            .padding(.vertical)
        }
        .background(Color("white"))
        .navigationTitle("My Projects")
    }
}

struct ProjectCard: View {
    let project: Project
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Image(systemName: project.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 60)
                .clipped()
                .cornerRadius(10)
            
            Text(project.title)
                .font(.headline)
            
            Text(project.description)
                .font(.body)
                .foregroundColor(.secondary)
            
            HStack {
                ForEach(project.technologies, id: \.self) { tech in
                    Text(tech)
                        .font(.caption)
                        .padding(6)
                        .background((Color("green")).opacity(0.1))
                        .foregroundColor(Color("green"))
                        .cornerRadius(8)
                }
            }
            if let validURL = URL(string: project.link) {
                Link("View Project", destination: validURL)
                    .font(.caption)
                    .foregroundColor(.blue)
            }
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(12)
        .shadow(color: .gray.opacity(0.1), radius: 4)
    }
}

#Preview {
    NavigationStack {
        ProjectsView()
    }
}
