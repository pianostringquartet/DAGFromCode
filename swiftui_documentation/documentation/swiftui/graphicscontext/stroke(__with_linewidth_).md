---
title: stroke(_:with:lineWidth:)
description: Draws a path into the context with a specified line width.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/stroke(_:with:linewidth:)
timestamp: 2025-10-29T00:11:01.904Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Instance Method**

# stroke(_:with:lineWidth:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Draws a path into the context with a specified line width.

```swift
func stroke(_ path: Path, with shading: GraphicsContext.Shading, lineWidth: CGFloat = 1)
```

## Parameters

**path**

The path to outline.



**shading**

The color or pattern to use when outlining the `path`.



**lineWidth**

The width of the stroke, which defaults to `1`.



## Discussion

When you call this method, all [Stroke Style](/documentation/swiftui/strokestyle) properties other than [line Width](/documentation/swiftui/strokestyle/linewidth) take their default values. To control other style properties, use [stroke(_:with:style:)](/documentation/swiftui/graphicscontext/stroke(_:with:style:)) instead.

## Drawing a path

- [stroke(_:with:style:)](/documentation/swiftui/graphicscontext/stroke(_:with:style:))
- [fill(_:with:style:)](/documentation/swiftui/graphicscontext/fill(_:with:style:))
- [GraphicsContext.Shading](/documentation/swiftui/graphicscontext/shading)
- [GraphicsContext.GradientOptions](/documentation/swiftui/graphicscontext/gradientoptions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
