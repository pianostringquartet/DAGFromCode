---
title: screen
description: A mode that multiplies the inverse of the source image samples with the inverse of the background image samples.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/blendmode-swift.struct/screen
timestamp: 2025-10-29T00:13:27.501Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [blendmode-swift.struct](/documentation/swiftui/graphicscontext/blendmode-swift.struct)

**Type Property**

# screen

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A mode that multiplies the inverse of the source image samples with the inverse of the background image samples.

```swift
static var screen: GraphicsContext.BlendMode { get }
```

## Discussion

Drawing in this mode results in colors that are at least as light as either of the two contributing sample colors.

## Lightening

- [lighten](/documentation/swiftui/graphicscontext/blendmode-swift.struct/lighten)
- [colorDodge](/documentation/swiftui/graphicscontext/blendmode-swift.struct/colordodge)
- [plusLighter](/documentation/swiftui/graphicscontext/blendmode-swift.struct/pluslighter)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
