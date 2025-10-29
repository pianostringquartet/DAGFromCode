---
title: overlay(_:in:fillStyle:)
description: Layers a shape that you specify in front of this view.
source: https://developer.apple.com/documentation/swiftui/view/overlay(_:in:fillstyle:)
timestamp: 2025-10-29T00:14:45.150Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# overlay(_:in:fillStyle:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Layers a shape that you specify in front of this view.

```swift
nonisolated func overlay<S, T>(_ style: S, in shape: T, fillStyle: FillStyle = FillStyle()) -> some View where S : ShapeStyle, T : Shape
```

## Parameters

**style**

A [Shape Style](/documentation/swiftui/shapestyle) that SwiftUI uses to fill the shape that you specify.



**shape**

An instance of a type that conforms to [Shape](/documentation/swiftui/shape) that SwiftUI draws in front of the view.



**fillStyle**

The [Fill Style](/documentation/swiftui/fillstyle) to use when drawing the shape. The default style uses the nonzero winding number rule and antialiasing.



## Return Value

A view with the specified shape drawn in front of it.

## Discussion

Use this modifier to layer a type that conforms to the [Shape](/documentation/swiftui/shape) protocol — like a [Rectangle](/documentation/swiftui/rectangle), [Circle](/documentation/swiftui/circle), or [Capsule](/documentation/swiftui/capsule) — in front of a view. Specify a [Shape Style](/documentation/swiftui/shapestyle) that’s used to fill the shape. For example, you can overlay the outline of one rectangle in front of another:

```swift
Rectangle()
    .frame(width: 200, height: 100)
    .overlay(.teal, in: Rectangle().inset(by: 10).stroke(lineWidth: 5))
```

The example above uses the [inset(by:)](/documentation/swiftui/insettableshape/inset(by:)) method to slightly reduce the size of the overlaid rectangle, and the [stroke(lineWidth:)](/documentation/swiftui/shape/stroke(linewidth:)) method to fill only the shape’s outline. This creates an inset border:



This modifier is a convenience method for layering a shape over a view. To handle the more general case of overlaying a [View](/documentation/swiftui/view) — or a stack of views — with control over the position, use [overlay(alignment:content:)](/documentation/swiftui/view/overlay(alignment:content:)) instead. To cover a view with a [Shape Style](/documentation/swiftui/shapestyle), use [overlay(_:ignoresSafeAreaEdges:)](/documentation/swiftui/view/overlay(_:ignoressafeareaedges:)).

## Layering views

- [Adding a background to your view](/documentation/swiftui/adding-a-background-to-your-view)
- [ZStack](/documentation/swiftui/zstack)
- [zIndex(_:)](/documentation/swiftui/view/zindex(_:))
- [background(alignment:content:)](/documentation/swiftui/view/background(alignment:content:))
- [background(_:ignoresSafeAreaEdges:)](/documentation/swiftui/view/background(_:ignoressafeareaedges:))
- [background(ignoresSafeAreaEdges:)](/documentation/swiftui/view/background(ignoressafeareaedges:))
- [background(_:in:fillStyle:)](/documentation/swiftui/view/background(_:in:fillstyle:))
- [background(in:fillStyle:)](/documentation/swiftui/view/background(in:fillstyle:))
- [overlay(alignment:content:)](/documentation/swiftui/view/overlay(alignment:content:))
- [overlay(_:ignoresSafeAreaEdges:)](/documentation/swiftui/view/overlay(_:ignoressafeareaedges:))
- [backgroundMaterial](/documentation/swiftui/environmentvalues/backgroundmaterial)
- [containerBackground(_:for:)](/documentation/swiftui/view/containerbackground(_:for:))
- [containerBackground(for:alignment:content:)](/documentation/swiftui/view/containerbackground(for:alignment:content:))
- [ContainerBackgroundPlacement](/documentation/swiftui/containerbackgroundplacement)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
