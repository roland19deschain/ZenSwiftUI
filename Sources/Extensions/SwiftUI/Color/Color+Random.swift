import SwiftUI

public extension Color {
	
	/// Returns an opaque color (alpha 1) with random RGB values.
	static var opaqueRandom: Self {
		Color(
			red: .random(in: 0...1),
			green: .random(in: 0...1),
			blue: .random(in: 0...1),
			opacity: 1
		)
	}
	
	/// Return a color with random RGB and alpha values.
	static var transparentRandom: Self {
		Color(
			red: .random(in: 0...1),
			green: .random(in: 0...1),
			blue: .random(in: 0...1),
			opacity: .random(in: 0...1)
		)
	}
	
}
