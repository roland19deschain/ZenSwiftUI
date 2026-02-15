import UIKit
import SwiftUI
import ZenUIKit

public struct SecureViewWrapper<Content: View> {
	
	// MARK: - Stored Properties
	
	let content: Content
	
	// MARK: - Life Cycle
	
	init(@ViewBuilder content: () -> Content) {
		self.content = content()
	}
	
}

// MARK: - UIViewRepresentable

extension SecureViewWrapper: UIViewRepresentable {
	
	public func makeUIView(context: Context) -> UIView {
		let hostingController = UIHostingController(rootView: content)
		guard
			let uiView = hostingController.view,
			let secureView = SecureView(uiView)
		else {
			assertionFailure("Failed to initialize SecureView")
			return UIView()
		}
		uiView.backgroundColor = .clear
		uiView.isOpaque = false
		return secureView
	}
	
	public func updateUIView(_ uiView: UIView, context: Context) {}
	
}

// MARK: - Convenience

public extension View {
	
	func secure() -> some View {
		SecureViewWrapper {
			self
		}
	}
	
}
