//
//  ContentView.swift
//  Recipes
//
//  Created by Matteo Manferdini on 05/12/25.
//

import SwiftUI

struct ContentView: View {
	@State var coordinator = Coordinator()

	var body: some View {
		TabView(selection: $coordinator.appSection) {
			Tab("Recipes", systemImage: "list.bullet.clipboard", value: .recipes) {
				NavigationStack {
					RecipesList()
						.navigationDestination(for: Recipe.self) { recipe in
							coordinator.destination(for: recipe)
						}
				}
			}
			Tab("Settings", systemImage: "gear", value: .settings) {
				NavigationStack(path: $coordinator.settingsPath) {
					coordinator.view(for: .main)
						.navigationDestination(for: SettingsRoute.self) { route in
							coordinator.view(for: route)
						}
				}
			}
		}
		.environment(coordinator)
		.onOpenURL { url in
			coordinator.handleURL(url)
		}
	}
}

#Preview {
	ContentView()
}
