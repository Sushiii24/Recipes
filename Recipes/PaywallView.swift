//
//  PaywallView.swift
//  Recipes
//
//  Created by Matteo Manferdini on 05/12/25.
//

import SwiftUI

struct PaywallView: View {
	@State private var viewModel: ViewModel

	init(viewModel: ViewModel) {
		self._viewModel = State(initialValue: viewModel)
	}

	var body: some View {
		Text("Hello, World!")
			.navigationTitle("Paywall")
	}
}

@Observable final class ViewModel {
	let networkController: NetworkController

	init(networkController: NetworkController) {
		self.networkController = networkController
	}
}
