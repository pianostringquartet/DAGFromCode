---
title: destinationIn
description: A mode that you use to erase any of the background that isn’t covered by opaque source pixels.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/blendmode-swift.struct/destinationin
timestamp: 2025-10-29T00:13:03.045Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [blendmode-swift.struct](/documentation/swiftui/graphicscontext/blendmode-swift.struct)

**Type Property**

# destinationIn

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A mode that you use to erase any of the background that isn’t covered by opaque source pixels.

```swift
static var destinationIn: GraphicsContext.BlendMode { get }
```

## Discussion

This mode implements the equation `R = D*Sa` where

- `R` is the composite image.
- `S` is the source image.
- `Da` is the source background’s alpha value.

## Accessing porter-duff modes

- [clear](/documentation/swiftui/graphicscontext/blendmode-swift.struct/clear)
- [copy](/documentation/swiftui/graphicscontext/blendmode-swift.struct/copy)
- [sourceIn](/documentation/swiftui/graphicscontext/blendmode-swift.struct/sourcein)
- [sourceOut](/documentation/swiftui/graphicscontext/blendmode-swift.struct/sourceout)
- [sourceAtop](/documentation/swiftui/graphicscontext/blendmode-swift.struct/sourceatop)
- [destinationOver](/documentation/swiftui/graphicscontext/blendmode-swift.struct/destinationover)
- [destinationOut](/documentation/swiftui/graphicscontext/blendmode-swift.struct/destinationout)
- [destinationAtop](/documentation/swiftui/graphicscontext/blendmode-swift.struct/destinationatop)
- [xor](/documentation/swiftui/graphicscontext/blendmode-swift.struct/xor)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
