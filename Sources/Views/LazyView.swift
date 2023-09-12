import SwiftUI

public struct LazyView<Content: View>: View {
	
	// MARK: - Stored Properties
	
	public let build: () -> Content
	
	// MARK: - Life Cycle
	
	public init(_ build: @autoclosure @escaping () -> Content) {
		self.build = build
	}
	
	// MARK: - View
	
	public var body: Content {
		build()
	}
	
}
