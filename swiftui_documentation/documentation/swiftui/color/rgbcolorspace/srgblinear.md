---
title: Color.RGBColorSpace.sRGBLinear
description: The extended sRGB color space with a linear transfer function.
source: https://developer.apple.com/documentation/swiftui/color/rgbcolorspace/srgblinear
timestamp: 2025-10-29T00:11:31.295Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [color](/documentation/swiftui/color) › [rgbcolorspace](/documentation/swiftui/color/rgbcolorspace)

**Case**

# Color.RGBColorSpace.sRGBLinear

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The extended sRGB color space with a linear transfer function.

```swift
case sRGBLinear
```

## Discussion

This color space has the same colorimetry as [s RGB](/documentation/swiftui/color/rgbcolorspace/srgb), but uses a linear transfer function.

Standard sRGB color spaces clamp the red, green, and blue components of a color to a range of `0` to `1`, but SwiftUI colors use an extended sRGB color space, so you can use component values outside that range.

## Getting color spaces

- [Color.RGBColorSpace.sRGB](/documentation/swiftui/color/rgbcolorspace/srgb)
- [Color.RGBColorSpace.displayP3](/documentation/swiftui/color/rgbcolorspace/displayp3)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
