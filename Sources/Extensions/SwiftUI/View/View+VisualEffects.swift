import SwiftUI

public extension View {
	
	/// Applies a stretchy scroll effect to the view.
	/// - Returns: A modified view with stretch-on-scroll behavior.
	@available(iOS 17.0, *)
	var stretchy: some View {
		visualEffect { effect, geometry in
			let positiveOffset: CGFloat = max(
				0,
				geometry.frame(in: .scrollView).minY
			)
			let newHeight: CGFloat = geometry.size.height + positiveOffset
			let scaleFactor: CGFloat = newHeight / geometry.size.height
			return effect.scaleEffect(
				x: scaleFactor,
				y: scaleFactor,
				anchor: .bottom
			)
		}
	}
	
}
