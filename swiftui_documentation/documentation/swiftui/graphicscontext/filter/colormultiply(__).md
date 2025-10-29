---
title: colorMultiply(_:)
description: Returns a filter that multiplies each color component by the matching component of a given color.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/filter/colormultiply(_:)
timestamp: 2025-10-29T00:15:23.054Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [filter](/documentation/swiftui/graphicscontext/filter)

**Type Method**

# colorMultiply(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Returns a filter that multiplies each color component by the matching component of a given color.

```swift
static func colorMultiply(_ color: Color) -> GraphicsContext.Filter
```

## Parameters

**color**

The color that the filter uses for the multiplication operation.



## Return Value

A filter that multiplies color components.

## Manipulating color

- [saturation(_:)](/documentation/swiftui/graphicscontext/filter/saturation(_:))
- [colorInvert(_:)](/documentation/swiftui/graphicscontext/filter/colorinvert(_:))
- [hueRotation(_:)](/documentation/swiftui/graphicscontext/filter/huerotation(_:))
- [grayscale(_:)](/documentation/swiftui/graphicscontext/filter/grayscale(_:))
- [colorMatrix(_:)](/documentation/swiftui/graphicscontext/filter/colormatrix(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
