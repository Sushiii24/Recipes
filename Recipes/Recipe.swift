//
//  RecipesViewItem.swift
//  Recipes
//
//  Created by Matteo Manferdini on 05/12/25.
//  Copyright © 2025 . All rights reserved.
//

import SwiftUI

struct Recipe: Identifiable, Hashable {
	let id: String
	let ingredients: String
	let isPremium: Bool
}

extension Recipe {
	static let data = [
		Recipe(
			id: "Spaghetti alla carbonara",
			ingredients: "Pasta, eggs, pork, cheese",
			isPremium: false
		),
		Recipe(
			id: "Ramen",
			ingredients: "Noodles, chicken, eggs, mushrooms",
			isPremium: false
		),
		Recipe(
			id: "Baked salmon",
			ingredients: "Fish, rice, vegetables",
			isPremium: true
		)
	]
}
