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
    let period: String
    let technologies: [String]
    let description: String
}
