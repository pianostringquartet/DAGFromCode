---
title: clipToLayer(opacity:options:content:)
description: Adds a clip shape that you define in a new layer to the context’s array of clip shapes.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/cliptolayer(opacity:options:content:)
timestamp: 2025-10-29T00:10:24.400Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Instance Method**

# clipToLayer(opacity:options:content:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Adds a clip shape that you define in a new layer to the context’s array of clip shapes.

```swift
mutating func clipToLayer(opacity: Double = 1, options: GraphicsContext.ClipOptions = ClipOptions(), content: (inout GraphicsContext) throws -> Void) rethrows
```

## Parameters

**opacity**

A value that SwiftUI uses to multiply the alpha channel of the rasterized layer that you define in the `content` closure. The alpha values that result define the clip shape.



**options**

A set of options that tell SwiftUI how to interpret the clip shape. For example, you can invert the clip shape by setting the [inverse](/documentation/swiftui/graphicscontext/clipoptions/inverse) option.



**content**

A closure that receives as input a new [Graphics Context](/documentation/swiftui/graphicscontext), which represents a new transparency layer. The alpha channel of content that you draw into this context, multiplied by the `opacity` parameter, defines the clip shape.



## Discussion

Call this method to add a shape to the array of clip shapes that the context uses to define a clipping mask. Shapes that you add affect only subsequent drawing operations.

## Masking

- [clip(to:style:options:)](/documentation/swiftui/graphicscontext/clip(to:style:options:))
- [clipBoundingRect](/documentation/swiftui/graphicscontext/clipboundingrect)
- [GraphicsContext.ClipOptions](/documentation/swiftui/graphicscontext/clipoptions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
