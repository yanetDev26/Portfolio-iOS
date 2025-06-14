//
//  ContactView.swift
//  Portfolio
//
//  Created by Yanet Rodriguez on 13/06/2025.
//

import SwiftUI

struct ContactView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 32) {
                Text("Contacto")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text("¿Querés ponerte en contacto conmigo? Podés escribirme o visitarme en mis redes profesionales.")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)

                VStack(spacing: 20) {
                    ContactItem(icon: "envelope.fill", title: "Email", value: "yane.rodriguesz26@gmail.com") {
                        openURL("mailto:yane.rodriguez26@gmail.com")
                    }

                    ContactItem(icon: "link", title: "LinkedIn", value: "yanetrodriguez") {
                        openURL("https://www.linkedin.com/in/yanetrodriguez/?locale=en_US")
                    }

                    ContactItem(icon: "doc.richtext.fill", title: "CV PDF", value: "Ver CV") {
                        openURL("https://tu-link-al-cv.com")
                    }

                    ContactItem(icon: "gearshape.fill", title: "GitHub", value: "yanetDev26") {
                        openURL("https://github.com/yanetDev26")
                    }
                }
            }
            .padding()
        }
        .background(Color("white"))
        .navigationTitle("Contacto")
    }

    private func openURL(_ urlString: String) {
        if let url = URL(string: urlString) {
            UIApplication.shared.open(url)
        }
    }
}

// MARK: - ContactItem View
struct ContactItem: View {
    let icon: String
    let title: String
    let value: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 16) {
                Image(systemName: icon)
                    .foregroundColor(Color("green"))
                    .font(.title2)
                    .frame(width: 32)

                VStack(alignment: .leading) {
                    Text(title)
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text(value)
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(.primary)
                }

                Spacer()
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(12)
        }
    }
}

#Preview {
    NavigationStack {
        ContactView()
    }
}
