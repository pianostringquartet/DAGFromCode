---
title: headroom
description: The content headroom of the color.
source: https://developer.apple.com/documentation/swiftui/color/resolvedhdr/headroom
timestamp: 2025-10-29T00:09:39.232Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [color](/documentation/swiftui/color) › [resolvedhdr](/documentation/swiftui/color/resolvedhdr)

**Instance Property**

# headroom

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> The content headroom of the color.

```swift
var headroom: Float? { get set }
```

## Discussion

This is the ratio of nominal peak luminance (“peak white”) to nominal diffuse luminance (“reference white” or “diffuse white”). Headroom is a linear quantity, i.e. there is no gamma function applied to it.

## Getting color properties

- [red](/documentation/swiftui/color/resolvedhdr/red)
- [green](/documentation/swiftui/color/resolvedhdr/green)
- [blue](/documentation/swiftui/color/resolvedhdr/blue)
- [linearRed](/documentation/swiftui/color/resolvedhdr/linearred)
- [linearGreen](/documentation/swiftui/color/resolvedhdr/lineargreen)
- [linearBlue](/documentation/swiftui/color/resolvedhdr/linearblue)
- [opacity](/documentation/swiftui/color/resolvedhdr/opacity)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
