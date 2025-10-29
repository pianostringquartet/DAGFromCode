---
title: Color.Resolved
description: A concrete color value.
source: https://developer.apple.com/documentation/swiftui/color/resolved
timestamp: 2025-10-29T00:13:11.486Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [color](/documentation/swiftui/color)

**Structure**

# Color.Resolved

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A concrete color value.

```swift
@frozen struct Resolved
```

## Overview

`Color.Resolved` is a set of RGBA values that represent a color that can be shown. The values are stored in the Linear sRGB color space, using extended range. This is a low-level type, most colors are represented by the `Color` type.

> [!NOTE]
> `Color.ResolvedHDR`, `Color`.

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

## Initializers

- [init(colorSpace:red:green:blue:opacity:)](/documentation/swiftui/color/resolved/init(colorspace:red:green:blue:opacity:)) Creates a resolved color from red, green, and blue component values.

## Instance Properties

- [blue](/documentation/swiftui/color/resolved/blue) The amount of blue in the color in the sRGB color space.
- [cgColor](/documentation/swiftui/color/resolved/cgcolor) A Core Graphics representation of the color.
- [green](/documentation/swiftui/color/resolved/green) The amount of green in the color in the sRGB color space.
- [linearBlue](/documentation/swiftui/color/resolved/linearblue) The amount of blue in the color in the sRGB linear color space.
- [linearGreen](/documentation/swiftui/color/resolved/lineargreen) The amount of green in the color in the sRGB linear color space.
- [linearRed](/documentation/swiftui/color/resolved/linearred) The amount of red in the color in the sRGB linear color space.
- [opacity](/documentation/swiftui/color/resolved/opacity) The degree of opacity in the color, given in the range  to .
- [red](/documentation/swiftui/color/resolved/red) The amount of red in the color in the sRGB color space.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
