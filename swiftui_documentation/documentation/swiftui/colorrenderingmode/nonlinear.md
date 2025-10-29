---
title: ColorRenderingMode.nonLinear
description: The non-linear sRGB working color space.
source: https://developer.apple.com/documentation/swiftui/colorrenderingmode/nonlinear
timestamp: 2025-10-29T00:11:54.228Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [colorrenderingmode](/documentation/swiftui/colorrenderingmode)

**Case**

# ColorRenderingMode.nonLinear

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The non-linear sRGB working color space.

```swift
case nonLinear
```

## Discussion

Color component values outside the range `[0, 1]` produce undefined results. This color space is gamma corrected.

## Getting rendering modes

- [ColorRenderingMode.extendedLinear](/documentation/swiftui/colorrenderingmode/extendedlinear)
- [ColorRenderingMode.linear](/documentation/swiftui/colorrenderingmode/linear)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
