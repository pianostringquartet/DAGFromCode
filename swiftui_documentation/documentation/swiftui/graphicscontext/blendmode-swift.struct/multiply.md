---
title: multiply
description: A mode that multiplies the source image samples with the background image samples.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/blendmode-swift.struct/multiply
timestamp: 2025-10-29T00:12:56.180Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [blendmode-swift.struct](/documentation/swiftui/graphicscontext/blendmode-swift.struct)

**Type Property**

# multiply

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A mode that multiplies the source image samples with the background image samples.

```swift
static var multiply: GraphicsContext.BlendMode { get }
```

## Discussion

Drawing in this mode results in colors that are at least as dark as either of the two contributing sample colors.

## Darkening

- [darken](/documentation/swiftui/graphicscontext/blendmode-swift.struct/darken)
- [colorBurn](/documentation/swiftui/graphicscontext/blendmode-swift.struct/colorburn)
- [plusDarker](/documentation/swiftui/graphicscontext/blendmode-swift.struct/plusdarker)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
