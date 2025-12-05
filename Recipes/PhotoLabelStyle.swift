//
//  PhotoLabelStyle.swift
//  Recipes
//
//  Created by Matteo Manferdini on 05/12/25.
//  Copyright © 2025 . All rights reserved.
//

import SwiftUI

struct PhotoLabelStyle: LabelStyle {
	func makeBody(configuration: Configuration) -> some View {
		HStack(spacing: 16) {
			configuration.icon
			VStack(alignment: .leading) {
				configuration.title
			}
		}
	}
}

extension LabelStyle where Self == PhotoLabelStyle {
	static var photo: PhotoLabelStyle {
		PhotoLabelStyle()
	}
}
