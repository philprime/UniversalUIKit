    import XCTest
    @testable import UniversalUIKit

    final class UniversalUIKitTests: XCTestCase {

        #if canImport(UIKit)
        func testUniImageType_UIKit_shouldBeUIImage() {
            let image = UniImage()
            XCTAssertTrue(type(of: image) == UIImage.self)
        }
        #elseif canImport(AppKit)
        func testUniImageType_UIKit_shouldBeUIImage() {
            let image = UniImage()
            XCTAssertTrue(type(of: image) == NSImage.self)
        }
        #endif
    }
