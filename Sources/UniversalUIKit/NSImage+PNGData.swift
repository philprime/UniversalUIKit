#if canImport(AppKit)
import AppKit

extension NSImage {

    public func pngData() -> Data? {
        tiffRepresentation?.bitmap?.png
    }
}

extension NSBitmapImageRep {

    fileprivate var png: Data? {
        representation(using: .png, properties: [:])
    }
}

extension Data {

    fileprivate var bitmap: NSBitmapImageRep? {
        NSBitmapImageRep(data: self)
    }
}
#endif
