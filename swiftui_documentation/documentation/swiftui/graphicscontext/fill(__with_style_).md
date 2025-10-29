---
title: fill(_:with:style:)
description: Draws a path into the context and fills the outlined region.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/fill(_:with:style:)
timestamp: 2025-10-29T00:13:25.158Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Instance Method**

# fill(_:with:style:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Draws a path into the context and fills the outlined region.

```swift
func fill(_ path: Path, with shading: GraphicsContext.Shading, style: FillStyle = FillStyle())
```

## Parameters

**path**

The outline of the region to fill.



**shading**

The color or pattern to use when filling the region bounded by `path`.



**style**

A style that indicates how to rasterize the path.



## Discussion

The current drawing state of the context defines the full drawing operation. For example, the current transformation and clip shapes, and any styles applied to the result, affect the final result.

## Drawing a path

- [stroke(_:with:lineWidth:)](/documentation/swiftui/graphicscontext/stroke(_:with:linewidth:))
- [stroke(_:with:style:)](/documentation/swiftui/graphicscontext/stroke(_:with:style:))
- [GraphicsContext.Shading](/documentation/swiftui/graphicscontext/shading)
- [GraphicsContext.GradientOptions](/documentation/swiftui/graphicscontext/gradientoptions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
