import SwiftUI
import Combine

public final class DeviceOrientation: ObservableObject {
	
	// MARK: - Stored Properties
	
	@Published public var orientation: UIDeviceOrientation
	
	private var listener: AnyCancellable?
	
	// MARK: - Life Cycle
	
	public init() {
		orientation = UIDevice.current.orientation
		
		listener = NotificationCenter.default.publisher(
			for: UIDevice.orientationDidChangeNotification
		).compactMap {
			($0.object as? UIDevice)?.orientation
			
		}.assign(to: \.orientation, on: self)
	}
	
	deinit {
		listener?.cancel()
	}
	
}
