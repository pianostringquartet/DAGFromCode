---
title: gradient
description: Returns the standard gradient for the color .
source: https://developer.apple.com/documentation/swiftui/color/gradient
timestamp: 2025-10-29T00:11:54.279Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [color](/documentation/swiftui/color)

**Instance Property**

# gradient

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Returns the standard gradient for the color .

```swift
var gradient: AnyGradient { get }
```

## Discussion

For example, filling a rectangle with a gradient derived from the standard blue color:

```swift
Rectangle().fill(.blue.gradient)
```

## Modifying a color

- [opacity(_:)](/documentation/swiftui/color/opacity(_:))
- [mix(with:by:in:)](/documentation/swiftui/color/mix(with:by:in:))
- [exposureAdjust(_:)](/documentation/swiftui/color/exposureadjust(_:))
- [headroom(_:)](/documentation/swiftui/color/headroom(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
