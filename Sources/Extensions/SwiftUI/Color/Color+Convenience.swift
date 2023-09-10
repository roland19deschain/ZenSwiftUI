import SwiftUI

public extension Color {
	
	/// Returns a random color.
	static var random: Self {
		Color(
			red: .random(in: 0...1),
			green: .random(in: 0...1),
			blue: .random(in: 0...1)
		)
	}
	
}
