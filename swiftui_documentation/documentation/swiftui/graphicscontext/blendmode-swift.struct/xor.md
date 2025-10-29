---
title: xor
description: A mode that you use to clear pixels where both the source and background images are opaque.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/blendmode-swift.struct/xor
timestamp: 2025-10-29T00:14:20.962Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [blendmode-swift.struct](/documentation/swiftui/graphicscontext/blendmode-swift.struct)

**Type Property**

# xor

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A mode that you use to clear pixels where both the source and background images are opaque.

```swift
static var xor: GraphicsContext.BlendMode { get }
```

## Discussion

This mode implements the equation `R = S*(1 - Da) + D*(1 - Sa)` where

- `R` is the composite image.
- `S` is the source image.
- `D` is the background.
- `Sa` is the source image’s alpha value.
- `Da` is the source background’s alpha value.

This XOR mode is only nominally related to the classical bitmap XOR operation, which SwiftUI doesn’t support.

## Accessing porter-duff modes

- [clear](/documentation/swiftui/graphicscontext/blendmode-swift.struct/clear)
- [copy](/documentation/swiftui/graphicscontext/blendmode-swift.struct/copy)
- [sourceIn](/documentation/swiftui/graphicscontext/blendmode-swift.struct/sourcein)
- [sourceOut](/documentation/swiftui/graphicscontext/blendmode-swift.struct/sourceout)
- [sourceAtop](/documentation/swiftui/graphicscontext/blendmode-swift.struct/sourceatop)
- [destinationOver](/documentation/swiftui/graphicscontext/blendmode-swift.struct/destinationover)
- [destinationIn](/documentation/swiftui/graphicscontext/blendmode-swift.struct/destinationin)
- [destinationOut](/documentation/swiftui/graphicscontext/blendmode-swift.struct/destinationout)
- [destinationAtop](/documentation/swiftui/graphicscontext/blendmode-swift.struct/destinationatop)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
