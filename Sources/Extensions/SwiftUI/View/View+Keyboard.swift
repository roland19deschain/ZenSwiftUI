import SwiftUI
import UIKit

public extension View {
	
	/// Dismisses the keyboard by forcing the current first responder to resign.
	///
	/// This method sends the `resignFirstResponder` action through the UIKit
	/// responder chain, causing whichever view currently holds input focus
	/// to release it. As a result, the system keyboard is hidden.
	///
	/// Use this helper when you need to programmatically dismiss the keyboard
	/// from SwiftUI—for example, when closing a search bar, submitting a form,
	/// or collapsing an input field.
	///
	/// - Note: This relies on UIKit under the hood because SwiftUI does not
	/// yet provide a native API for dismissing the keyboard.
	func hideKeyboard() {
		UIApplication.shared.sendAction(
			#selector(UIResponder.resignFirstResponder),
			to: nil,
			from: nil,
			for: nil
		)
	}
	
}
