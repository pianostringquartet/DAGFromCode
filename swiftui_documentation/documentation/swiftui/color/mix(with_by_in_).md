---
title: mix(with:by:in:)
description: Returns a version of self mixed with  by the amount specified by .
source: https://developer.apple.com/documentation/swiftui/color/mix(with:by:in:)
timestamp: 2025-10-29T00:14:21.411Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [color](/documentation/swiftui/color)

**Instance Method**

# mix(with:by:in:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Returns a version of self mixed with  by the amount specified by .

```swift
func mix(with rhs: Color, by fraction: Double, in colorSpace: Gradient.ColorSpace = .perceptual) -> Color
```

## Parameters

**rhs**

The color to mix `self` with.



**fraction**

The amount of blending, `0.5` means `self` is mixed in equal parts with `rhs`.



**colorSpace**

The color space used to mix the colors.



## Return Value

A new `Color` based on `self` and `rhs`.

## Modifying a color

- [opacity(_:)](/documentation/swiftui/color/opacity(_:))
- [gradient](/documentation/swiftui/color/gradient)
- [exposureAdjust(_:)](/documentation/swiftui/color/exposureadjust(_:))
- [headroom(_:)](/documentation/swiftui/color/headroom(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
