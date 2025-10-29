---
title: opacity
description: The opacity of drawing operations in the context.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/opacity
timestamp: 2025-10-29T00:10:45.833Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Instance Property**

# opacity

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The opacity of drawing operations in the context.

```swift
var opacity: Double { get set }
```

## Discussion

Set this value to affect the opacity of content that you subsequently draw into the context. Changing this value has no impact on the content you previously drew into the context.

## Setting opacity and the blend mode

- [blendMode](/documentation/swiftui/graphicscontext/blendmode-swift.property)
- [GraphicsContext.BlendMode](/documentation/swiftui/graphicscontext/blendmode-swift.struct)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
