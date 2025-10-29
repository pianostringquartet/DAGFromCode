---
title: plusDarker
description: A mode that adds the inverse of the color components of the source and background images, and then inverts the result, producing a darkened composite.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/blendmode-swift.struct/plusdarker
timestamp: 2025-10-29T00:14:06.217Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [blendmode-swift.struct](/documentation/swiftui/graphicscontext/blendmode-swift.struct)

**Type Property**

# plusDarker

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A mode that adds the inverse of the color components of the source and background images, and then inverts the result, producing a darkened composite.

```swift
static var plusDarker: GraphicsContext.BlendMode { get }
```

## Discussion

This mode implements the equation `R = MAX(0, 1 - ((1 - D) + (1 - S)))` where

- `R` is the composite image.
- `S` is the source image.
- `D` is the background.

## Darkening

- [darken](/documentation/swiftui/graphicscontext/blendmode-swift.struct/darken)
- [multiply](/documentation/swiftui/graphicscontext/blendmode-swift.struct/multiply)
- [colorBurn](/documentation/swiftui/graphicscontext/blendmode-swift.struct/colorburn)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
