---
title: PreviewDevice
description: A simulator device that runs a preview.
source: https://developer.apple.com/documentation/swiftui/previewdevice
timestamp: 2025-10-29T00:09:44.608Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# PreviewDevice

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A simulator device that runs a preview.

```swift
struct PreviewDevice
```

## Overview

Create a preview device by name, like “iPhone X”, or by model number, like “iPad8,1”. Use the device in a call to the [previewDevice(_:)](/documentation/swiftui/view/previewdevice(_:)) modifier to set a preview device that doesn’t change when you change the run destination in Xcode:

```swift
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
            .previewDevice(PreviewDevice(rawValue: "iPad Pro (11-inch)"))
    }
}
```

You can get a list of supported preview device names by using the `xcrun` command in the Terminal app:

```swift
% xcrun simctl list devicetypes
```

Additionally, you can use the following values for macOS platform development:

- “Mac”
- “Mac Catalyst”

## Conforms To

- [ExpressibleByExtendedGraphemeClusterLiteral](/documentation/Swift/ExpressibleByExtendedGraphemeClusterLiteral)
- [ExpressibleByStringLiteral](/documentation/Swift/ExpressibleByStringLiteral)
- [ExpressibleByUnicodeScalarLiteral](/documentation/Swift/ExpressibleByUnicodeScalarLiteral)
- [RawRepresentable](/documentation/Swift/RawRepresentable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Customizing a preview

- [previewDevice(_:)](/documentation/swiftui/view/previewdevice(_:))
- [previewLayout(_:)](/documentation/swiftui/view/previewlayout(_:))
- [previewInterfaceOrientation(_:)](/documentation/swiftui/view/previewinterfaceorientation(_:))
- [InterfaceOrientation](/documentation/swiftui/interfaceorientation)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
