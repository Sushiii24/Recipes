//
//  SettingsView.swift
//  Recipes
//
//  Created by Matteo Manferdini on 05/12/25.
//  Copyright © 2025 . All rights reserved.
//

import SwiftUI

struct SettingsView: View {
	@Environment(Coordinator.self) private var coordinator

	var body: some View {
		Form {
			NavigationLink(destination: { coordinator.profileSettings() }) {
				Label("Profile", systemImage: "person.crop.circle")
			}
			NavigationLink(destination: { coordinator.allergiesSettings() }) {
				Label("Allergies", systemImage: "leaf")
			}
		}
		.navigationTitle("Settings")
	}
}

#Preview {
	NavigationStack {
		SettingsView()
	}
}
