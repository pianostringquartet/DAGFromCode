---
title: init(colorSpace:red:green:blue:opacity:)
description: Creates a resolved color from red, green, and blue component values.
source: https://developer.apple.com/documentation/swiftui/color/resolved/init(colorspace:red:green:blue:opacity:)
timestamp: 2025-10-29T00:09:34.745Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [color](/documentation/swiftui/color) › [resolved](/documentation/swiftui/color/resolved)

**Initializer**

# init(colorSpace:red:green:blue:opacity:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates a resolved color from red, green, and blue component values.

```swift
init(colorSpace: Color.RGBColorSpace = .sRGB, red: Float, green: Float, blue: Float, opacity: Float = 1)
```

## Parameters

**colorSpace**

The profile that specifies how to interpret the color for display. The default is [s RGB](/documentation/swiftui/color/rgbcolorspace/srgb).



**red**

The amount of red in the color.



**green**

The amount of green in the color.



**blue**

The amount of blue in the color.



**opacity**

An optional degree of opacity, given in the range `0` to `1`. A value of `0` means 100% transparency, while a value of `1` means 100% opacity. The default is `1`.



## Discussion

A standard sRGB color space clamps each color component — `red`, `green`, and `blue` — to a range of `0` to `1`, but SwiftUI colors use an extended sRGB color space, so you can use component values outside that range. This makes it possible to create colors using the [s RGB](/documentation/swiftui/color/rgbcolorspace/srgb) or [s RGBLinear](/documentation/swiftui/color/rgbcolorspace/srgblinear) color space that make full use of the wider gamut of a diplay that supports [display P3](/documentation/swiftui/color/rgbcolorspace/displayp3).

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
