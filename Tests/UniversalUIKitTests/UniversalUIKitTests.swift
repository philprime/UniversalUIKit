import XCTest
@testable import UniversalUIKit

final class UniversalUIKitTests: XCTestCase {

    #if canImport(UIKit)
    func testUniImageType_UIKit_shouldBeUIImage() {
        let image = UniImage()
        XCTAssertTrue(type(of: image) == UIImage.self)
    }
    #elseif canImport(AppKit)
    func testUniImageType_AppKit_shouldBeNSImage() {
        let image = UniImage()
        XCTAssertTrue(type(of: image) == NSImage.self)
    }
    #endif

    #if canImport(UIKit)
    func testUniColorType_UIKit_shouldBeUIColor() {
        let color = UniColor.init(white: 1.0, alpha: 0.0)
        XCTAssertTrue(color is UIColor)
    }
    #elseif canImport(AppKit)
    func testUniImageType_AppKit_shouldBeNSColor() {
        let color = UniColor()
        XCTAssertTrue(color is NSColor)
    }
    #endif
}
