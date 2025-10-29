---
title: overlay(_:ignoresSafeAreaEdges:)
description: Layers the specified style in front of this view.
source: https://developer.apple.com/documentation/swiftui/view/overlay(_:ignoressafeareaedges:)
timestamp: 2025-10-29T00:09:42.990Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# overlay(_:ignoresSafeAreaEdges:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Layers the specified style in front of this view.

```swift
nonisolated func overlay<S>(_ style: S, ignoresSafeAreaEdges edges: Edge.Set = .all) -> some View where S : ShapeStyle
```

## Parameters

**style**

An instance of a type that conforms to [Shape Style](/documentation/swiftui/shapestyle) that SwiftUI layers in front of the modified view.



**edges**

The set of edges for which to ignore safe area insets when adding the overlay. The default value is [all](/documentation/swiftui/edge/set/all). Specify an empty set to respect safe area insets on all edges.



## Return Value

A view with the specified style drawn in front of it.

## Discussion

Use this modifier to layer a type that conforms to the [Shape Style](/documentation/swiftui/shapestyle) protocol, like a [Color](/documentation/swiftui/color), [Material](/documentation/swiftui/material), or [Hierarchical Shape Style](/documentation/swiftui/hierarchicalshapestyle), in front of a view. For example, you can overlay the [ultra Thin Material](/documentation/swiftui/shapestyle/ultrathinmaterial) over a [Circle](/documentation/swiftui/circle):

```swift
struct CoveredCircle: View {
    var body: some View {
        Circle()
            .frame(width: 300, height: 200)
            .overlay(.ultraThinMaterial)
    }
}
```

SwiftUI anchors the style to the view’s bounds. For the example above, the overlay fills the entirety of the circle’s frame (which happens to be wider than the circle is tall):



SwiftUI also limits the style’s extent to the view’s container-relative shape. You can see this effect if you constrain the `CoveredCircle` view with a [containerShape(_:)](/documentation/swiftui/view/containershape(_:)) modifier:

```swift
CoveredCircle()
    .containerShape(RoundedRectangle(cornerRadius: 30))
```

The overlay takes on the specified container shape:



By default, the overlay ignores safe area insets on all edges, but you can provide a specific set of edges to ignore, or an empty set to respect safe area insets on all edges:

```swift
Rectangle()
    .overlay(
        .secondary,
        ignoresSafeAreaEdges: []) // Ignore no safe area insets.
```

If you want to specify a [View](/documentation/swiftui/view) or a stack of views as the overlay rather than a style, use [overlay(alignment:content:)](/documentation/swiftui/view/overlay(alignment:content:)) instead. If you want to specify a [Shape](/documentation/swiftui/shape), use [overlay(_:in:fillStyle:)](/documentation/swiftui/view/overlay(_:in:fillstyle:)).

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
- [overlay(_:in:fillStyle:)](/documentation/swiftui/view/overlay(_:in:fillstyle:))
- [backgroundMaterial](/documentation/swiftui/environmentvalues/backgroundmaterial)
- [containerBackground(_:for:)](/documentation/swiftui/view/containerbackground(_:for:))
- [containerBackground(for:alignment:content:)](/documentation/swiftui/view/containerbackground(for:alignment:content:))
- [ContainerBackgroundPlacement](/documentation/swiftui/containerbackgroundplacement)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
