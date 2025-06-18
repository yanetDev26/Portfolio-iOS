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
    let link: String
    let imageName: String
}

let sampleProjects: [Project] = [
    Project(
        title: "Dices",
        description: "Pair of dice ideal for betting with friends. Simple application to show the random result of two dice.",
        technologies: ["Swift", "UIKit"],
        link: "https://github.com/yanetDev26/Dices",
        imageName: "dice"
    ),
    Project(
        title: "Magic8Ball",
        description: "Simple practice application with a random function as an answer to your question.",
        technologies: ["Swift", "UIKit"],
        link: "https://github.com/yanetDev26/Magic8Ball",
        imageName: "8.circle.fill"
    ),
    Project(
        title: "CamelCase",
        description: "Haz que la función CamelCase(str) tome el parámetro str y lo retorne correctamente en el formato camel case, donde la primera letra de cada palabra es capitalizada, excepto la primera letra de todas. El string solamente contendrá letras y alguna combinación de caracteres delimitadores de puntuación separando cada palabra. Por ejemplo, si str es BOB loves-coding entonces el programa deberá devolver el string bobLovesCoding.",
        technologies: ["Kotlin"],
        link: "https://github.com/yanetDev26/CamelCase",
        imageName: "textformat"
    )
]
