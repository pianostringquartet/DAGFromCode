---
title: color(_:red:green:blue:opacity:)
description: Returns a shading instance that fills with a color in the given color space.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/shading/color(_:red:green:blue:opacity:)
timestamp: 2025-10-29T00:15:22.860Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [shading](/documentation/swiftui/graphicscontext/shading)

**Type Method**

# color(_:red:green:blue:opacity:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Returns a shading instance that fills with a color in the given color space.

```swift
static func color(_ colorSpace: Color.RGBColorSpace = .sRGB, red: Double, green: Double, blue: Double, opacity: Double = 1) -> GraphicsContext.Shading
```

## Parameters

**colorSpace**

The RGB color space used to define the color. The default is [s RGB](/documentation/swiftui/color/rgbcolorspace/srgb).



**red**

The red component of the color.



**green**

The green component of the color.



**blue**

The blue component of the color.



**opacity**

The opacity of the color. The default is `1`, which means fully opaque.



## Return Value

A shading instance filled with a color.

## Colors

- [color(_:)](/documentation/swiftui/graphicscontext/shading/color(_:))
- [color(_:white:opacity:)](/documentation/swiftui/graphicscontext/shading/color(_:white:opacity:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
