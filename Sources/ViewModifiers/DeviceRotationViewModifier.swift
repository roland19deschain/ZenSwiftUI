import SwiftUI

struct DeviceRotationViewModifier {
	
	// MARK: - Stored Properties - Closures
	
	let action: (UIDeviceOrientation) -> Void
	
}

// MARK: - ViewModifier

extension DeviceRotationViewModifier: ViewModifier {
	
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
