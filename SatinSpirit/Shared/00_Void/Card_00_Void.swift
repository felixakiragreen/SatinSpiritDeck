//
//  Card_00_Void.swift
//  SatinSpirit
//
//  Created by Felix Akira Green on 1/20/21.
//

import struct Forge.ForgeView
import SwiftUI

struct Card_00_Void: View {
	var renderer: Renderer_00_Void

	var body: some View {
		ZStack {
			ForgeView(renderer: renderer)
		}
	}
}

struct Card_00_Void_Previews: PreviewProvider {
	static var previews: some View {
		Card_00_Void(renderer: Renderer_00_Void())
	}
}
