//
//  Project.swift
//  Portfolio
//
//  Created by Yanet Rodriguez on 14/06/2025.
//

import Foundation

struct Project: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let technologies: [String]
    let link: String?
    let imageName: String
}

let sampleProjects: [Project] = [
    Project(
        title: "Workout Tracker",
        description: "A .NET MAUI app for managing training routines and tracking workout progress.",
        technologies: [".NET MAUI", "MVVM", "SQLite"],
        link: nil,
        imageName: "workout"
    ),
    Project(
        title: "Live TV Entertainment App",
        description: "Developed for Telecom SA to stream live TV, movies, and series using Swift and Kotlin.",
        technologies: ["Swift", "KMP", "SwiftUI", "MVVM"],
        link: nil,
        imageName: "tv"
    ),
    Project(
        title: "iOS App – Mutual del Tiro",
        description: "Led the app from concept to App Store launch, including UI design, architecture, and deployment.",
        technologies: ["Swift", "UIKit", "MVVM"],
        link: "https://apps.apple.com", // example
        imageName: "mutual"
    )
]
