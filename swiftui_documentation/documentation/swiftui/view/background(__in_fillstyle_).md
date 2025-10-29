---
title: background(_:in:fillStyle:)
description: Sets the view’s background to an insettable shape filled with a style.
source: https://developer.apple.com/documentation/swiftui/view/background(_:in:fillstyle:)
timestamp: 2025-10-29T00:10:32.797Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# background(_:in:fillStyle:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Sets the view’s background to an insettable shape filled with a style.

```swift
nonisolated func background<S, T>(_ style: S, in shape: T, fillStyle: FillStyle = FillStyle()) -> some View where S : ShapeStyle, T : InsettableShape
```

## Parameters

**style**

A [Shape Style](/documentation/swiftui/shapestyle) that SwiftUI uses to the fill the shape that you specify.



**shape**

An instance of a type that conforms to [Insettable Shape](/documentation/swiftui/insettableshape) that SwiftUI draws behind the view.



**fillStyle**

The [Fill Style](/documentation/swiftui/fillstyle) to use when drawing the shape. The default style uses the nonzero winding number rule and antialiasing.



## Return Value

A view with the specified insettable shape drawn behind it.

## Discussion

Use this modifier to layer a type that conforms to the [Insettable Shape](/documentation/swiftui/insettableshape) protocol — like a [Rectangle](/documentation/swiftui/rectangle), [Circle](/documentation/swiftui/circle), or [Capsule](/documentation/swiftui/capsule) — behind a view. Specify the [Shape Style](/documentation/swiftui/shapestyle) that’s used to fill the shape. For example, you can place a [Rounded Rectangle](/documentation/swiftui/roundedrectangle) behind a [Label](/documentation/swiftui/label):

```swift
Label("Flag", systemImage: "flag.fill")
    .padding()
    .background(.teal, in: RoundedRectangle(cornerRadius: 8))
```

The [teal](/documentation/swiftui/shapestyle/teal) color fills the shape:



This modifier is a convenience method for placing a single shape behind a view. To create a background with other [View](/documentation/swiftui/view) types — or with a stack of views — use [background(alignment:content:)](/documentation/swiftui/view/background(alignment:content:)) instead. To add a [Shape Style](/documentation/swiftui/shapestyle) as a background, use [background(_:ignoresSafeAreaEdges:)](/documentation/swiftui/view/background(_:ignoressafeareaedges:)).

## Layering views

- [Adding a background to your view](/documentation/swiftui/adding-a-background-to-your-view)
- [ZStack](/documentation/swiftui/zstack)
- [zIndex(_:)](/documentation/swiftui/view/zindex(_:))
- [background(alignment:content:)](/documentation/swiftui/view/background(alignment:content:))
- [background(_:ignoresSafeAreaEdges:)](/documentation/swiftui/view/background(_:ignoressafeareaedges:))
- [background(ignoresSafeAreaEdges:)](/documentation/swiftui/view/background(ignoressafeareaedges:))
- [background(in:fillStyle:)](/documentation/swiftui/view/background(in:fillstyle:))
- [overlay(alignment:content:)](/documentation/swiftui/view/overlay(alignment:content:))
- [overlay(_:ignoresSafeAreaEdges:)](/documentation/swiftui/view/overlay(_:ignoressafeareaedges:))
- [overlay(_:in:fillStyle:)](/documentation/swiftui/view/overlay(_:in:fillstyle:))
- [backgroundMaterial](/documentation/swiftui/environmentvalues/backgroundmaterial)
- [containerBackground(_:for:)](/documentation/swiftui/view/containerbackground(_:for:))
- [containerBackground(for:alignment:content:)](/documentation/swiftui/view/containerbackground(for:alignment:content:))
- [ContainerBackgroundPlacement](/documentation/swiftui/containerbackgroundplacement)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
