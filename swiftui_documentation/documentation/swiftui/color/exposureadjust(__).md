---
title: exposureAdjust(_:)
description: Returns a new color with an exposure adjustment applied.
source: https://developer.apple.com/documentation/swiftui/color/exposureadjust(_:)
timestamp: 2025-10-29T00:13:28.754Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [color](/documentation/swiftui/color)

**Instance Method**

# exposureAdjust(_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Returns a new color with an exposure adjustment applied.

```swift
func exposureAdjust(_ stops: Double) -> Color
```

## Parameters

**stops**

The number of exposure levels to adjust by.



## Return Value

A new color with the exposure adjustment applied.

## Discussion

This function adjusts the exposure of a color by multipling its linear-light representation by `pow(2, stops)` and adjusting its HDR content headroom.

For example the system yellow color could have its brightness increased by two exposure levels:

```swift
Color.yellow.exposureAdjust(2)
```

## Modifying a color

- [opacity(_:)](/documentation/swiftui/color/opacity(_:))
- [gradient](/documentation/swiftui/color/gradient)
- [mix(with:by:in:)](/documentation/swiftui/color/mix(with:by:in:))
- [headroom(_:)](/documentation/swiftui/color/headroom(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
