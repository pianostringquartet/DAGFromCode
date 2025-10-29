---
title: cgColor
description: A Core Graphics representation of the color, if available.
source: https://developer.apple.com/documentation/swiftui/color/cgcolor
timestamp: 2025-10-29T00:11:03.204Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [color](/documentation/swiftui/color)

**Instance Property**

# cgColor

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A Core Graphics representation of the color, if available.

```swift
var cgColor: CGColor? { get }
```

## Discussion

You can get a [CGColor](/documentation/CoreGraphics/CGColor) instance from a constant SwiftUI color. This includes colors you create from a Core Graphics color, from RGB or HSB components, or from constant UIKit and AppKit colors.

For a dynamic color, like one you load from an Asset Catalog using [init(_:bundle:)](/documentation/swiftui/color/init(_:bundle:)), or one you create from a dynamic UIKit or AppKit color, this property is `nil`. To evaluate all types of colors, use the `resolve(in:)` method.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
