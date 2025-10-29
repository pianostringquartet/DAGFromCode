---
title: init(_:white:opacity:)
description: Creates a constant grayscale color.
source: https://developer.apple.com/documentation/swiftui/color/init(_:white:opacity:)
timestamp: 2025-10-29T00:10:18.953Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [color](/documentation/swiftui/color)

**Initializer**

# init(_:white:opacity:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a constant grayscale color.

```swift
init(_ colorSpace: Color.RGBColorSpace = .sRGB, white: Double, opacity: Double = 1)
```

## Parameters

**colorSpace**

The profile that specifies how to interpret the color for display. The default is [s RGB](/documentation/swiftui/color/rgbcolorspace/srgb).



**white**

A value that indicates how white the color is, with higher values closer to 100% white, and lower values closer to 100% black.



**opacity**

An optional degree of opacity, given in the range `0` to `1`. A value of `0` means 100% transparency, while a value of `1` means 100% opacity. The default is `1`.



## Discussion

This initializer creates a constant color that doesn’t change based on context. For example, it doesn’t have distinct light and dark appearances, unlike various system-defined colors, or a color that you load from an Asset Catalog with [init(_:bundle:)](/documentation/swiftui/color/init(_:bundle:)).

A standard sRGB color space clamps the `white` component to a range of `0` to `1`, but SwiftUI colors use an extended sRGB color space, so you can use component values outside that range. This makes it possible to create colors using the [s RGB](/documentation/swiftui/color/rgbcolorspace/srgb) or [s RGBLinear](/documentation/swiftui/color/rgbcolorspace/srgblinear) color space that make full use of the wider gamut of a diplay that supports [display P3](/documentation/swiftui/color/rgbcolorspace/displayp3).

## Creating a color from component values

- [init(hue:saturation:brightness:opacity:)](/documentation/swiftui/color/init(hue:saturation:brightness:opacity:))
- [init(_:red:green:blue:opacity:)](/documentation/swiftui/color/init(_:red:green:blue:opacity:))
- [Color.RGBColorSpace](/documentation/swiftui/color/rgbcolorspace)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
