import SwiftUI

// MARK: - Conditionally apply modifier

public extension View {
	
	/// Applies the given transform if the given condition evaluates to `true`.
	/// - Parameters:
	///   - condition: The condition to evaluate.
	///   - transform: The transform to apply to the source `View`.
	/// - Returns: Either the original `View` or the modified `View` if the condition is `true`.
	@ViewBuilder func `if`<Content: View>(
		_ condition: Bool,
		transform: (Self) -> Content
	) -> some View {
		if condition {
			transform(self)
		} else {
			self
		}
	}
	
	/// Applies the`trueTransform` if the given condition evaluates to `true`,
	/// otherwise, applies `falseTransform`.
	/// - Parameters:
	///   - condition: The condition to evaluate.
	///   - trueTransform: The transform to apply to the source `View` if the given condition evaluates to `true`.
	///   - falseTransform: The transform to apply to the source `View` if the given condition evaluates to `false`.
	/// - Returns: The `View` modified depending on the condition.
	@ViewBuilder func `if`<Content: View>(
		_ condition: Bool,
		trueTransform: (Self) -> Content,
		else falseTransform: (Self) -> Content
	) -> some View {
		if condition {
			trueTransform(self)
		} else {
			falseTransform(self)
		}
	}
	
}
