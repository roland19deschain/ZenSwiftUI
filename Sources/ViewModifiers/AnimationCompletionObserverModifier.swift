import SwiftUI

/// An animatable modifier that is used for observing animations for a given animatable value.
public struct AnimationCompletionObserverModifier<Value>: AnimatableModifier where Value: VectorArithmetic {
	
	// MARK: - Stored Properies - Animatable
	
	/// While animating, SwiftUI changes the old input value to the new target value using this property.
	/// This value is set to the old value until the animation completes.
	public var animatableData: Value {
		didSet {
			notifyIfFinished()
		}
	}
	
	// MARK: - Stored Properies - Private
	
	/// The target value for which we're observing. This value is directly set once the animation starts.
	/// During animation, `animatableData` will hold the oldValue and is only updated to the target value once the animation completes.
	private var targetValue: Value
	private var completion: () -> Void
	
	// MARK: - Life Cycle
	
	/// Creates an instance of `AnimationCompletionObserverModifier`.
	/// - Parameters:
	///   - observedValue: The value to observe for animations.
	///   - completion: The completion callback to call once the animation completes.
	/// - Returns: A new instance of `AnimationCompletionObserverModifier`.
	public init(
		observedValue: Value,
		completion: @escaping () -> Void
	) {
		self.completion = completion
		self.animatableData = observedValue
		targetValue = observedValue
	}
	
	// MARK: - ViewModifier
	
	public func body(content: Content) -> some View {
		// We're not really modifying the view so we can directly return the original input value.
		content
	}
	
}

// MARK: - Notify

private extension AnimationCompletionObserverModifier {
	
	func notifyIfFinished() {
		guard animatableData == targetValue else {
			return
		}
		// Dispatching is needed to take the next runloop for the completion callback.
		// This prevents errors like "Modifying state during view update, this will cause undefined behavior."
		DispatchQueue.main.async {
			self.completion()
		}
	}
	
}
