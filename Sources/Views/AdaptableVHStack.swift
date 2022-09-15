import SwiftUI

public struct AdaptableVHStack<Content: View>: View {

	// MARK: - Stored Properties

	@Environment(\.horizontalSizeClass) var horizontalSizeClass
	@ViewBuilder var content: () -> Content

	// MARK: - View

	public var body: some View {
		if horizontalSizeClass == .compact {
			VStack(content: content)
		} else {
			HStack(content: content)
		}
	}

}
