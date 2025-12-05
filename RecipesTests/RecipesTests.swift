//
//  RecipesTests.swift
//  RecipesTests
//
//  Created by Matteo Manferdini on 10/12/25.
//

import Foundation
import Testing
@testable import Recipes

@Test func allergiesDeepLink() async throws {
	let coordinator = Coordinator()
	coordinator.handleURL(URL(string: "recipes://settings/allergies")!)
	#expect(coordinator.appSection == .settings)
	#expect(coordinator.settingsPath == [.main, .allergies])
}
