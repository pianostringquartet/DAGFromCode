---
title: stroke(_:with:style:)
description: Draws a path into the context with a specified stroke style.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/stroke(_:with:style:)
timestamp: 2025-10-29T00:09:33.657Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Instance Method**

# stroke(_:with:style:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Draws a path into the context with a specified stroke style.

```swift
func stroke(_ path: Path, with shading: GraphicsContext.Shading, style: StrokeStyle)
```

## Parameters

**path**

The path to outline.



**shading**

The color or pattern to use when outlining the `path`.



**style**

A style that indicates how to outline the path.



## Discussion

If you only need to control the style’s [line Width](/documentation/swiftui/strokestyle/linewidth) property, use [stroke(_:with:lineWidth:)](/documentation/swiftui/graphicscontext/stroke(_:with:linewidth:)) instead.

## Drawing a path

- [stroke(_:with:lineWidth:)](/documentation/swiftui/graphicscontext/stroke(_:with:linewidth:))
- [fill(_:with:style:)](/documentation/swiftui/graphicscontext/fill(_:with:style:))
- [GraphicsContext.Shading](/documentation/swiftui/graphicscontext/shading)
- [GraphicsContext.GradientOptions](/documentation/swiftui/graphicscontext/gradientoptions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
