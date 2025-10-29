---
title: Color.ResolvedHDR
description: A concrete color value, including HDR headroom information.
source: https://developer.apple.com/documentation/swiftui/color/resolvedhdr
timestamp: 2025-10-29T00:09:30.511Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [color](/documentation/swiftui/color)

**Structure**

# Color.ResolvedHDR

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> A concrete color value, including HDR headroom information.

```swift
@frozen struct ResolvedHDR
```

## Overview

`Color.ResolvedHDR` is a set of RGBA values that represent a color that can be shown. The color components are stored in the extended sRGB color space and may contain a “headroom” value describing how the color is rendered for displays with different dynamic ranges. This is a low-level type, most colors are represented by the `Color` type.

> [!NOTE]
> `Color.Resolved`, `Color`.

## Conforms To

- [Animatable](/documentation/swiftui/animatable)
- [BitwiseCopyable](/documentation/Swift/BitwiseCopyable)
- [Copyable](/documentation/Swift/Copyable)
- [CustomStringConvertible](/documentation/Swift/CustomStringConvertible)
- [Decodable](/documentation/Swift/Decodable)
- [Encodable](/documentation/Swift/Encodable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [ShapeStyle](/documentation/swiftui/shapestyle)

## Creating a concrete color value

- [init(_:headroom:)](/documentation/swiftui/color/resolvedhdr/init(_:headroom:)) Initializes a new resolved color value.

## Getting color properties

- [red](/documentation/swiftui/color/resolvedhdr/red) The amount of red in the color in the extended sRGB color space.
- [green](/documentation/swiftui/color/resolvedhdr/green) The amount of green in the color in the extended sRGB color space.
- [blue](/documentation/swiftui/color/resolvedhdr/blue) The amount of blue in the color in the extended sRGB color space.
- [linearRed](/documentation/swiftui/color/resolvedhdr/linearred) The amount of red in the color in the extended sRGB color space variant with linear gamma.
- [linearGreen](/documentation/swiftui/color/resolvedhdr/lineargreen) The amount of green in the color in the extended sRGB color space variant with linear gamma.
- [linearBlue](/documentation/swiftui/color/resolvedhdr/linearblue) The amount of blue in the color in the extended sRGB color space variant with linear gamma.
- [opacity](/documentation/swiftui/color/resolvedhdr/opacity) The opacity of the color, in the range  to .
- [headroom](/documentation/swiftui/color/resolvedhdr/headroom) The content headroom of the color.

## Working with high dynamic range (HDR) colors

- [resolveHDR(in:)](/documentation/swiftui/color/resolvehdr(in:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
