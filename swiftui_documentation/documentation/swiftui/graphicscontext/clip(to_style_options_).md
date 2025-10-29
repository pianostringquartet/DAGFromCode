---
title: clip(to:style:options:)
description: Adds a path to the context’s array of clip shapes.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/clip(to:style:options:)
timestamp: 2025-10-29T00:15:02.137Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Instance Method**

# clip(to:style:options:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Adds a path to the context’s array of clip shapes.

```swift
mutating func clip(to path: Path, style: FillStyle = FillStyle(), options: GraphicsContext.ClipOptions = ClipOptions())
```

## Parameters

**path**

A [Path](/documentation/swiftui/path) that defines the shape of the clipping mask.



**style**

A [Fill Style](/documentation/swiftui/fillstyle) that defines how to rasterize the shape.



**options**

Clip options that tell SwiftUI how to interpret the `path` as a clip shape. For example, you can invert the clip shape by setting the [inverse](/documentation/swiftui/graphicscontext/clipoptions/inverse) option.



## Discussion

Call this method to add a shape to the array of clip shapes that the context uses to define a clipping mask. Shapes that you add affect only subsequent drawing operations.

## Masking

- [clipToLayer(opacity:options:content:)](/documentation/swiftui/graphicscontext/cliptolayer(opacity:options:content:))
- [clipBoundingRect](/documentation/swiftui/graphicscontext/clipboundingrect)
- [GraphicsContext.ClipOptions](/documentation/swiftui/graphicscontext/clipoptions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
