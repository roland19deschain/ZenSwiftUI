import SwiftUI

struct ScreenIdleTimerViewModifier: ViewModifier {
	
	// MARK: - Stored Properties / Values
	
	let isDisabled: Bool
	
	// MARK: - ViewModifier
	
	func body(content: Content) -> some View {
		content
			.onAppear {
				set(isDisabled: isDisabled)
			}.onChange(of: isDisabled) { _, newValue in
				set(isDisabled: newValue)
			}.onDisappear {
				set(isDisabled: false)
			}
	}
	
}

// MARK: - Controls

private extension ScreenIdleTimerViewModifier {
	
	func set(isDisabled: Bool) {
		DispatchQueue.main.async {
			UIApplication.shared.isIdleTimerDisabled = isDisabled
		}
	}
	
}

// MARK: - View / Application Idle Timer Disabled

public extension View {
	
	func applicationIdleTimerDisabled(_ isDisabled: Bool) -> some View {
		modifier(ScreenIdleTimerViewModifier(isDisabled: isDisabled))
	}
	
}
