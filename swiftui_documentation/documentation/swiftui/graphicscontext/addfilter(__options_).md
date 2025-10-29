---
title: addFilter(_:options:)
description: Adds a filter that applies to subsequent drawing operations.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/addfilter(_:options:)
timestamp: 2025-10-29T00:09:35.853Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Instance Method**

# addFilter(_:options:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Adds a filter that applies to subsequent drawing operations.

```swift
mutating func addFilter(_ filter: GraphicsContext.Filter, options: GraphicsContext.FilterOptions = FilterOptions())
```

## Parameters

**filter**

A graphics context filter that you create by calling one of the [Filter](/documentation/swiftui/graphicscontext/filter) factory methods.



**options**

A set of options from [Filter Options](/documentation/swiftui/graphicscontext/filteroptions) that you can use to configure filter operations.



## Discussion

To draw with filtering, SwiftUI:

- Rasterizes the drawing operation to an implicit transparency layer without blending, adjusting opacity, or applying any clipping.
- Applies the filter to the layer containing the rasterized image.
- Composites the layer onto the background, using the context’s current blend mode, opacity setting, and clip shapes.

When SwiftUI draws with a filter, the blend mode might apply to regions outside the drawing operation’s intrinsic shape, but inside its clip shape. That might result in unexpected behavior for certain blend modes like [copy](/documentation/swiftui/graphicscontext/blendmode-swift.struct/copy), where the drawing operation completely overwrites the background even if the source alpha is zero.

## Filtering

- [GraphicsContext.Filter](/documentation/swiftui/graphicscontext/filter)
- [GraphicsContext.FilterOptions](/documentation/swiftui/graphicscontext/filteroptions)
- [GraphicsContext.BlurOptions](/documentation/swiftui/graphicscontext/bluroptions)
- [GraphicsContext.ShadowOptions](/documentation/swiftui/graphicscontext/shadowoptions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
