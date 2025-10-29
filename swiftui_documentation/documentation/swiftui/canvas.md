---
title: Canvas
description: A view type that supports immediate mode drawing.
source: https://developer.apple.com/documentation/swiftui/canvas
timestamp: 2025-10-29T00:14:43.702Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# Canvas

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A view type that supports immediate mode drawing.

```swift
struct Canvas<Symbols> where Symbols : View
```

## Overview

Use a canvas to draw rich and dynamic 2D graphics inside a SwiftUI view. The canvas passes a [Graphics Context](/documentation/swiftui/graphicscontext) to the closure that you use to perform immediate mode drawing operations. The canvas also passes a [CGSize](/documentation/CoreFoundation/CGSize) value that you can use to customize what you draw. For example, you can use the context’s [stroke(_:with:lineWidth:)](/documentation/swiftui/graphicscontext/stroke(_:with:linewidth:)) command to draw a [Path](/documentation/swiftui/path) instance:

```swift
Canvas { context, size in
    context.stroke(
        Path(ellipseIn: CGRect(origin: .zero, size: size)),
        with: .color(.green),
        lineWidth: 4)
}
.frame(width: 300, height: 200)
.border(Color.blue)
```

The example above draws the outline of an ellipse that exactly inscribes a canvas with a blue border:



In addition to outlined and filled paths, you can draw images, text, and complete SwiftUI views. To draw views, use the [init(opaque:colorMode:rendersAsynchronously:renderer:symbols:)](/documentation/swiftui/canvas/init(opaque:colormode:rendersasynchronously:renderer:symbols:)) method to supply views that you can reference from inside the renderer. You can also add masks, apply filters, perform transforms, control blending, and more. For information about how to draw, see [Graphics Context](/documentation/swiftui/graphicscontext).

A canvas doesn’t offer interactivity or accessibility for individual elements, including for views that you pass in as symbols. However, it might provide better performance for a complex drawing that involves dynamic data. Use a canvas to improve performance for a drawing that doesn’t primarily involve text or require interactive elements.

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [View](/documentation/swiftui/view)

## Creating a canvas

- [init(opaque:colorMode:rendersAsynchronously:renderer:)](/documentation/swiftui/canvas/init(opaque:colormode:rendersasynchronously:renderer:)) Creates and configures a canvas.
- [init(opaque:colorMode:rendersAsynchronously:renderer:symbols:)](/documentation/swiftui/canvas/init(opaque:colormode:rendersasynchronously:renderer:symbols:)) Creates and configures a canvas that you supply with renderable child views.

## Managing opacity and color

- [isOpaque](/documentation/swiftui/canvas/isopaque) A Boolean that indicates whether the canvas is fully opaque.
- [colorMode](/documentation/swiftui/canvas/colormode) The working color space and storage format of the canvas.

## Referencing symbols

- [symbols](/documentation/swiftui/canvas/symbols) A view that provides child views that you can use in the drawing callback.

## Rendering

- [rendersAsynchronously](/documentation/swiftui/canvas/rendersasynchronously) A Boolean that indicates whether the canvas can present its contents to its parent view asynchronously.
- [renderer](/documentation/swiftui/canvas/renderer) The drawing callback that you use to draw into the canvas.

## Immediate mode drawing

- [Add rich graphics to your SwiftUI app](/documentation/swiftui/add-rich-graphics-to-your-swiftui-app)
- [GraphicsContext](/documentation/swiftui/graphicscontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
