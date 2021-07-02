    import XCTest
    @testable import UniversalUIKit

    final class NSIMage_PNGDataTests: XCTestCase {

        #if canImport(AppKit)
        func testNSImagePNGData_shouldConvertToPNGData() {
            let inputData = Data(base64Encoded: "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABAQMAAAAl21bKAAAAA1BMVEUAAACnej3aAAAAAXRSTlMAQObYZgAAAApJREFUCNdjYAAAAAIAAeIhvDMAAAAASUVORK5CYII=")!
            let image = UniImage(data: inputData)!
            let outputData = Data(base64Encoded: "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAAaADAAQAAAABAAAAAQAAAAD5Ip3+AAAAC0lEQVQIHWNgAAIAAAUAAY27m/MAAAAASUVORK5CYII=")!
            XCTAssertEqual(image.pngData(), outputData)
        }
        #endif
    }
