---
title: plusLighter
description: A mode that adds the components of the source and background images, resulting in a lightened composite.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/blendmode-swift.struct/pluslighter
timestamp: 2025-10-29T00:09:55.840Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [blendmode-swift.struct](/documentation/swiftui/graphicscontext/blendmode-swift.struct)

**Type Property**

# plusLighter

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A mode that adds the components of the source and background images, resulting in a lightened composite.

```swift
static var plusLighter: GraphicsContext.BlendMode { get }
```

## Discussion

This mode implements the equation `R = MIN(1, S + D)` where

- `R` is the composite image.
- `S` is the source image.
- `D` is the background.

## Lightening

- [lighten](/documentation/swiftui/graphicscontext/blendmode-swift.struct/lighten)
- [screen](/documentation/swiftui/graphicscontext/blendmode-swift.struct/screen)
- [colorDodge](/documentation/swiftui/graphicscontext/blendmode-swift.struct/colordodge)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
