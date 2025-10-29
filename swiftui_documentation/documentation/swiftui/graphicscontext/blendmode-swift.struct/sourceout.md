---
title: sourceOut
description: A mode that you use to paint the source image onto the transparent parts of the background, while erasing the background.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/blendmode-swift.struct/sourceout
timestamp: 2025-10-29T00:09:55.873Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [blendmode-swift.struct](/documentation/swiftui/graphicscontext/blendmode-swift.struct)

**Type Property**

# sourceOut

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A mode that you use to paint the source image onto the transparent parts of the background, while erasing the background.

```swift
static var sourceOut: GraphicsContext.BlendMode { get }
```

## Discussion

This mode implements the equation `R = S*(1 - Da)` where

- `R` is the composite image.
- `S` is the source image.
- `Da` is the source background’s alpha value.

## Accessing porter-duff modes

- [clear](/documentation/swiftui/graphicscontext/blendmode-swift.struct/clear)
- [copy](/documentation/swiftui/graphicscontext/blendmode-swift.struct/copy)
- [sourceIn](/documentation/swiftui/graphicscontext/blendmode-swift.struct/sourcein)
- [sourceAtop](/documentation/swiftui/graphicscontext/blendmode-swift.struct/sourceatop)
- [destinationOver](/documentation/swiftui/graphicscontext/blendmode-swift.struct/destinationover)
- [destinationIn](/documentation/swiftui/graphicscontext/blendmode-swift.struct/destinationin)
- [destinationOut](/documentation/swiftui/graphicscontext/blendmode-swift.struct/destinationout)
- [destinationAtop](/documentation/swiftui/graphicscontext/blendmode-swift.struct/destinationatop)
- [xor](/documentation/swiftui/graphicscontext/blendmode-swift.struct/xor)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
