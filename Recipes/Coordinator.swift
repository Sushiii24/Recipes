//
//  Coordinator.swift
//  Recipes
//
//  Created by Matteo Manferdini on 05/12/25.
//

import Observation
import SwiftUI

@Observable final class NetworkController {}

@Observable final class Coordinator {
	var appSection: AppSection = .recipes
	var settingsPath: [SettingsRoute] = []
	let networkController = NetworkController()

	@ViewBuilder func destination(for recipe: Recipe) -> some View {
		if recipe.isPremium {
			let viewModel = ViewModel(networkController: networkController)
			PaywallView(viewModel: viewModel)
		} else {
			RecipeView(recipe: recipe)
		}
	}

	@ViewBuilder func profileSettings() -> some View {
		ProfileView()
	}

	@ViewBuilder func allergiesSettings() -> some View {
		ProfileView()
	}

	@ViewBuilder func view(for route: SettingsRoute) -> some View {
		switch route {
			case .main: SettingsView()
			case .profile: ProfileView()
			case .allergies: AllergiesView()
		}
	}

	func handleURL(_ url: URL) {
		appSection = .settings
		settingsPath = [.main, .allergies]
	}
}

enum AppSection {
	case recipes, settings
}

enum SettingsRoute {
	case main, profile, allergies
}
