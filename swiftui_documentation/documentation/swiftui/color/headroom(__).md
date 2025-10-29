---
title: headroom(_:)
description: Creates a new color with specified HDR content headroom.
source: https://developer.apple.com/documentation/swiftui/color/headroom(_:)
timestamp: 2025-10-29T00:10:38.535Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [color](/documentation/swiftui/color)

**Instance Method**

# headroom(_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Creates a new color with specified HDR content headroom.

```swift
func headroom(_ headroom: Double?) -> Color
```

## Parameters

**headroom**

The headroom value to associate with the new color.



## Return Value

A new color with the specified content headroom.

## Discussion

High Dynamic Range colors (those with RGB components outside the standard [0, 1] range) should be annotated with their headroom to ensure that they are displayed correctly. Knowing content headroom allows the rendering system to automatically increase display headroom when the color is displayed and to tone map the color when the available display headroom is insufficient to render the color as intended.

For example a custom yellow color whose brightness has been increased by two exposure levels:

```swift
Color(.sRGB, red: 1.83, green: 1.47, blue: 0)
    .headroom(4)
```

note that headroom is a linear quantity, and as such any color adjustments should typically be made in a linear color space.

## Modifying a color

- [opacity(_:)](/documentation/swiftui/color/opacity(_:))
- [gradient](/documentation/swiftui/color/gradient)
- [mix(with:by:in:)](/documentation/swiftui/color/mix(with:by:in:))
- [exposureAdjust(_:)](/documentation/swiftui/color/exposureadjust(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
