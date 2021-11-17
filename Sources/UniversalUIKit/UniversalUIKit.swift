#if canImport(UIKit)
@_exported import UIKit

public typealias UniImage = UIImage
public typealias UniColor = UIColor
#elseif canImport(AppKit)
@_exported import AppKit

public typealias UniImage = NSImage
public typealias UniColor = NSColor
#endif
