import SwiftUI

public extension Color {
	
	init(
		hex: UInt,
		opacity: Double = 1,
		colorSpace: RGBColorSpace = .sRGB
	) {
		let red: UInt = (hex >> 16) & 0xFF
		let green: UInt = (hex >> 8) & 0xFF
		let blue: UInt = hex & 0xFF
		self.init(
			colorSpace,
			red: Double(red) / 255,
			green: Double(green) / 255,
			blue: Double(blue) / 255,
			opacity: opacity
		)
	}
	
	init(
		hex: String,
		colorSpace: RGBColorSpace = .sRGB
	) {
		let hex: String = hex.trimmingCharacters(in: .alphanumerics.inverted)
		var int: UInt64 = 0
		Scanner(string: hex).scanHexInt64(&int)
		let a, r, g, b: UInt64
		switch hex.count {
		case 3: // RGB (12-bit)
			(a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
		case 6: // RGB (24-bit)
			(a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
		case 8: // ARGB (32-bit)
			(a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
		default:
			(a, r, g, b) = (1, 1, 1, 0)
		}
		self.init(
			colorSpace,
			red: Double(r) / 255,
			green: Double(g) / 255,
			blue:  Double(b) / 255,
			opacity: Double(a) / 255
		)
	}
	
}
