import SwiftUI

public extension View {
	
	/// Calls the completion handler whenever an animation on the given value completes.
	/// - Parameters:
	///   - value: The value to observe for animations.
	///   - completion: The completion callback to call once the animation completes.
	/// - Returns: A modified `View` instance with the observer attached.
	func onAnimationCompleted<Value: VectorArithmetic>(
		for value: Value,
		completion: @escaping () -> Void
	) -> ModifiedContent<Self, AnimationCompletionObserverModifier<Value>> {
		modifier(
			AnimationCompletionObserverModifier(
				observedValue: value,
				completion: completion
			)
		)
	}
	
}
