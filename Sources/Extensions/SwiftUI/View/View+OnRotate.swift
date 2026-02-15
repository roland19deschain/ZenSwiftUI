import SwiftUI

public extension View {
	
	/// Calls the `action` whenever device orientation changes.
	/// - Parameters:
	///   - action: The action to call whenever device orientation changes.
	/// - Returns: A modified `View` instance with the observer attached.
	func onRotate(
		_ action: @escaping (UIDeviceOrientation) -> Void
	) -> some View {
		modifier(
			DeviceRotationViewModifier(action: action)
		)
	}
	
}

// MARK: - ViewModifier

struct DeviceRotationViewModifier: ViewModifier {
	
	// MARK: - Stored Properties / Closures
	
	let action: (UIDeviceOrientation) -> Void
	
	func body(content: Content) -> some View {
		content.onReceive(
			NotificationCenter.default.publisher(
				for: UIDevice.orientationDidChangeNotification
			)
		) { _ in
			action(UIDevice.current.orientation)
		}
	}
	
}
