---
title: ColorRenderingMode.linear
description: The linear sRGB working color space.
source: https://developer.apple.com/documentation/swiftui/colorrenderingmode/linear
timestamp: 2025-10-29T00:14:56.584Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [colorrenderingmode](/documentation/swiftui/colorrenderingmode)

**Case**

# ColorRenderingMode.linear

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The linear sRGB working color space.

```swift
case linear
```

## Discussion

Color component values outside the range `[0, 1]` produce undefined results. This color space isn’t gamma corrected.

## Getting rendering modes

- [ColorRenderingMode.extendedLinear](/documentation/swiftui/colorrenderingmode/extendedlinear)
- [ColorRenderingMode.nonLinear](/documentation/swiftui/colorrenderingmode/nonlinear)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
