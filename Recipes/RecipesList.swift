//
//  RecipesView.swift
//  Recipes
//
//  Created by Matteo Manferdini on 05/12/25.
//  Copyright © 2025 . All rights reserved.
//

import SwiftUI

struct RecipesList: View {
	@State var recipes = Recipe.data

	var body: some View {
		List {
			ForEach(recipes) { recipe in
				NavigationLink(value: recipe) {
					RecipeRow(
						headline: recipe.id,
						ingredients: recipe.ingredients,
						isPremium: recipe.isPremium
					)
				}
			}
			Link(
				"Set your allergies",
				destination: URL(string: "recipes://settings/allergies")!
			)
		}
		.listStyle(.plain)
		.navigationTitle("Recipes")
	}
}

private struct RecipeRow: View {
	let headline: String
	let ingredients: String
	let isPremium: Bool

	var body: some View {
		Label {
			Text(headline)
				.bold()
			Text(ingredients)
				.font(.subheadline)
				.foregroundStyle(.secondary)
		} icon: {
			Image(headline)
				.resizable()
				.scaledToFill()
				.frame(width: 64, height: 64)
				.clipShape(RoundedRectangle(cornerRadius: 8))
		}
		.labelStyle(.photo)
		.badge(isPremium ? "Premium" : "")
	}
}

#Preview {
	NavigationStack {
		RecipesList()
	}
}
