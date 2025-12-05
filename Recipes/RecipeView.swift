//
//  RecipeView.swift
//  Recipes
//
//  Created by Matteo Manferdini on 05/12/25.
//  Copyright © 2025 . All rights reserved.
//

import SwiftUI

struct RecipeView: View {
	let recipe: Recipe

	var body: some View {
		Text(recipe.id)
			.navigationTitle("Recipe")
	}
}

#Preview {
	NavigationStack {
		RecipeView(recipe: .data[0])
	}
}
