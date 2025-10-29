---
title: blendMode
description: The blend mode used by drawing operations in the context.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/blendmode-swift.property
timestamp: 2025-10-29T00:14:03.605Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Instance Property**

# blendMode

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The blend mode used by drawing operations in the context.

```swift
var blendMode: GraphicsContext.BlendMode { get set }
```

## Discussion

Set this value to affect how any content that you subsequently draw into the context blends with content that’s already in the context. Use one of the [Blend Mode-swift.struct](/documentation/swiftui/graphicscontext/blendmode-swift.struct) values.

## Setting opacity and the blend mode

- [opacity](/documentation/swiftui/graphicscontext/opacity)
- [GraphicsContext.BlendMode](/documentation/swiftui/graphicscontext/blendmode-swift.struct)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
