import SwiftUI
import UIKit

public struct ShareSheet {
	
	// MARK: - Stored Propertes
	
	let items: [Any]
	
	// MARK: - Life Cycle
	
	public init(items: [Any]) {
		self.items = items
	}
	
}

// MARK: - UIViewControllerRepresentable

extension ShareSheet: UIViewControllerRepresentable {
	
	public func makeUIViewController(context: Context) -> UIActivityViewController {
		UIActivityViewController(
			activityItems: items,
			applicationActivities: nil
		)
	}
	
	public func updateUIViewController(
		_ uiViewController: UIActivityViewController,
		context: Context
	) {}
	
}
