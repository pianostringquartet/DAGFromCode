---
title: Color.RGBColorSpace.sRGB
description: The extended red, green, blue (sRGB) color space.
source: https://developer.apple.com/documentation/swiftui/color/rgbcolorspace/srgb
timestamp: 2025-10-29T00:13:03.862Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [color](/documentation/swiftui/color) › [rgbcolorspace](/documentation/swiftui/color/rgbcolorspace)

**Case**

# Color.RGBColorSpace.sRGB

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The extended red, green, blue (sRGB) color space.

```swift
case sRGB
```

## Discussion

For information about the sRGB colorimetry and nonlinear transform function, see the IEC 61966-2-1 specification.

Standard sRGB color spaces clamp the red, green, and blue components of a color to a range of `0` to `1`, but SwiftUI colors use an extended sRGB color space, so you can use component values outside that range.

## Getting color spaces

- [Color.RGBColorSpace.sRGBLinear](/documentation/swiftui/color/rgbcolorspace/srgblinear)
- [Color.RGBColorSpace.displayP3](/documentation/swiftui/color/rgbcolorspace/displayp3)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
