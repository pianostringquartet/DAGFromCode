---
title: copy
description: A mode that replaces background image samples with source image samples.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/blendmode-swift.struct/copy
timestamp: 2025-10-29T00:09:41.828Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [blendmode-swift.struct](/documentation/swiftui/graphicscontext/blendmode-swift.struct)

**Type Property**

# copy

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A mode that replaces background image samples with source image samples.

```swift
static var copy: GraphicsContext.BlendMode { get }
```

## Discussion

Unlike the [normal](/documentation/swiftui/graphicscontext/blendmode-swift.struct/normal) mode, the source image completely replaces the background, so that even transparent pixels in the source image replace opaque pixels in the background, rather than letting the background show through.

This mode implements the equation `R = S` where

- `R` is the composite image.
- `S` is the source image.

## Accessing porter-duff modes

- [clear](/documentation/swiftui/graphicscontext/blendmode-swift.struct/clear)
- [sourceIn](/documentation/swiftui/graphicscontext/blendmode-swift.struct/sourcein)
- [sourceOut](/documentation/swiftui/graphicscontext/blendmode-swift.struct/sourceout)
- [sourceAtop](/documentation/swiftui/graphicscontext/blendmode-swift.struct/sourceatop)
- [destinationOver](/documentation/swiftui/graphicscontext/blendmode-swift.struct/destinationover)
- [destinationIn](/documentation/swiftui/graphicscontext/blendmode-swift.struct/destinationin)
- [destinationOut](/documentation/swiftui/graphicscontext/blendmode-swift.struct/destinationout)
- [destinationAtop](/documentation/swiftui/graphicscontext/blendmode-swift.struct/destinationatop)
- [xor](/documentation/swiftui/graphicscontext/blendmode-swift.struct/xor)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
