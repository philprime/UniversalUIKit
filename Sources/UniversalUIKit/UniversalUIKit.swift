#if canImport(UIKit)
@_exported import UIKit

public typealias UniImage = UIImage
#elseif canImport(AppKit)
@_exported import AppKit

public typealias UniImage = NSImage
#endif
