import SwiftUI

public extension View {
	
	/// Returns true if the device is a iPad.
	var isPad: Bool {
		UIDevice.current.userInterfaceIdiom == .pad
	}
	
	/// Returns true if the device is a iPhone.
	var isPhone: Bool {
		UIDevice.current.userInterfaceIdiom == .phone
	}
	
	/// Returns true if the device is a Apple TV.
	var isTV: Bool {
		UIDevice.current.userInterfaceIdiom == .tv
	}
	
	/// Returns true if the device is a Mac.
	var isMac: Bool {
		UIDevice.current.userInterfaceIdiom == .mac
	}
	
	/// Returns true if the device is a vehicle with CarPlay.
	var isCarPlay: Bool {
		UIDevice.current.userInterfaceIdiom == .carPlay
	}
	
	/// A Boolean value that indicates whether the device is in a portrait orientation.
	var isPortrait: Bool {
		UIDevice.current.orientation.isPortrait
	}
	
	/// A Boolean value that indicates whether the device is in a landscape orientation.
	var isLandscape: Bool {
		UIDevice.current.orientation.isLandscape
	}
	
}
