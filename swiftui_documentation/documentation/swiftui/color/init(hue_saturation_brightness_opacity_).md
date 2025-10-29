---
title: init(hue:saturation:brightness:opacity:)
description: Creates a constant color from hue, saturation, and brightness values.
source: https://developer.apple.com/documentation/swiftui/color/init(hue:saturation:brightness:opacity:)
timestamp: 2025-10-29T00:09:50.619Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [color](/documentation/swiftui/color)

**Initializer**

# init(hue:saturation:brightness:opacity:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a constant color from hue, saturation, and brightness values.

```swift
init(hue: Double, saturation: Double, brightness: Double, opacity: Double = 1)
```

## Parameters

**hue**

A value in the range `0` to `1` that maps to an angle from 0° to 360° to represent a shade on the color wheel.



**saturation**

A value in the range `0` to `1` that indicates how strongly the hue affects the color. A value of `0` removes the effect of the hue, resulting in gray. As the value increases, the hue becomes more prominent.



**brightness**

A value in the range `0` to `1` that indicates how bright a color is. A value of `0` results in black, regardless of the other components. The color lightens as you increase this component.



**opacity**

An optional degree of opacity, given in the range `0` to `1`. A value of `0` means 100% transparency, while a value of `1` means 100% opacity. The default is `1`.



## Discussion

This initializer creates a constant color that doesn’t change based on context. For example, it doesn’t have distinct light and dark appearances, unlike various system-defined colors, or a color that you load from an Asset Catalog with [init(_:bundle:)](/documentation/swiftui/color/init(_:bundle:)).

## Creating a color from component values

- [init(_:white:opacity:)](/documentation/swiftui/color/init(_:white:opacity:))
- [init(_:red:green:blue:opacity:)](/documentation/swiftui/color/init(_:red:green:blue:opacity:))
- [Color.RGBColorSpace](/documentation/swiftui/color/rgbcolorspace)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
