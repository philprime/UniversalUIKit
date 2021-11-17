import XCTest
@testable import UniversalUIKit

final class UniversalUIKitTests: XCTestCase {

    #if canImport(UIKit)
    func testUniImageType_UIKit_shouldBeUIImage() {
        let image = UniImage()
        XCTAssertTrue(type(of: image) == UIImage.self)
    }
    #elseif canImport(AppKit)
    func testUniImageType_AppKit_shouldBeUIImage() {
        let image = UniImage()
        XCTAssertTrue(type(of: image) == NSImage.self)
    }
    #endif

    #if canImport(UIKit)
    func testUniColorType_UIKit_shouldBeUIImage() {
        let image = UniColor()
        XCTAssertTrue(type(of: image) == UIColor.self)
    }
    #elseif canImport(AppKit)
    func testUniImageType_AppKit_shouldBeUIImage() {
        let image = UniColor()
        XCTAssertTrue(type(of: image) == NSColor.self)
    }
    #endif
}
