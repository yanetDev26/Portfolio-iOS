//
//  Experience.swift
//  Portfolio
//
//  Created by Yanet Rodriguez on 13/06/2025.
//

import Foundation

struct Experience: Identifiable {
    let id = UUID()
    let company: String
    let role: String
    let location: String
    let period: String
    let description: String
    let technologies: [String]
}

let experiences: [Experience] = [
    Experience(
        company: "Telecom SA",
        role: "iOS Software Developer",
        location: "Buenos Aires, Argentina",
        period: "Oct 2022 – Present",
        description: "Working on an entertainment app that allows users to stream live TV, movies, and series. Implemented features using Swift and Kotlin Multiplatform (KMP). Applied MVVM and VIPER architectures. Developed UI in SwiftUI and UIKit.",
        technologies: ["Swift", "KMP", "SwiftUI", "UIKit", "MVVM", "VIPER"]
    ),
    Experience(
        company: "Mutual del Tiro",
        role: "iOS Developer – Team Lead",
        location: "Rafaela, Argentina",
        period: "Jul 2023 – Sep 2023",
        description: "Led the entire mobile app project from idea to App Store release. Oversaw design, development, testing, and deployment. Focused on user experience and code quality.",
        technologies: ["Swift", "UIKit", "App Store", "Leadership"]
    ),
    Experience(
        company: "Nexo Soluciones",
        role: "Android Developer",
        location: "San Francisco, Argentina",
        period: "Mar 2021 – Oct 2022",
        description: "Developed native Android apps using Kotlin and MVVM. Used Firebase, Google Cloud, and GitHub. Participated in Scrum processes with Jira/Confluence.",
        technologies: ["Kotlin", "MVVM", "Firebase", "GitHub", "Scrum"]
    ),
    Experience(
        company: "VMG–FAR",
        role: ".NET MAUI Developer / Systems Engineer",
        location: "Rafaela, Argentina",
        period: "Oct 2019 – Mar 2021",
        description: "Developed cross-platform and desktop applications with Xamarin and C#. Built APIs with ASP.NET and managed databases (PostgreSQL, MySQL, SQL Server). Provided server support.",
        technologies: [".NET MAUI", "C#", "Xamarin", "ASP.NET", "SQL Server", "PostgreSQL"]
    )
]
