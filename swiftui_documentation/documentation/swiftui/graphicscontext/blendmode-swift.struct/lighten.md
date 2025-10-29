---
title: lighten
description: A mode that creates composite image samples by choosing the lighter samples from either the source image or the background.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/blendmode-swift.struct/lighten
timestamp: 2025-10-29T00:14:47.440Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [blendmode-swift.struct](/documentation/swiftui/graphicscontext/blendmode-swift.struct)

**Type Property**

# lighten

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A mode that creates composite image samples by choosing the lighter samples from either the source image or the background.

```swift
static var lighten: GraphicsContext.BlendMode { get }
```

## Discussion

When you draw in this mode, source image samples that are lighter than the background replace the background. Otherwise, the background image samples remain unchanged.

## Lightening

- [screen](/documentation/swiftui/graphicscontext/blendmode-swift.struct/screen)
- [colorDodge](/documentation/swiftui/graphicscontext/blendmode-swift.struct/colordodge)
- [plusLighter](/documentation/swiftui/graphicscontext/blendmode-swift.struct/pluslighter)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
