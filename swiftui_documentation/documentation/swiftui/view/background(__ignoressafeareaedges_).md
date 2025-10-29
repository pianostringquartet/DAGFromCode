---
title: background(_:ignoresSafeAreaEdges:)
description: Sets the view’s background to a style.
source: https://developer.apple.com/documentation/swiftui/view/background(_:ignoressafeareaedges:)
timestamp: 2025-10-29T00:10:02.489Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# background(_:ignoresSafeAreaEdges:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Sets the view’s background to a style.

```swift
nonisolated func background<S>(_ style: S, ignoresSafeAreaEdges edges: Edge.Set = .all) -> some View where S : ShapeStyle
```

## Parameters

**style**

An instance of a type that conforms to [Shape Style](/documentation/swiftui/shapestyle) that SwiftUI draws behind the modified view.



**edges**

The set of edges for which to ignore safe area insets when adding the background. The default value is [all](/documentation/swiftui/edge/set/all). Specify an empty set to respect safe area insets on all edges.



## Return Value

A view with the specified style drawn behind it.

## Discussion

Use this modifier to place a type that conforms to the [Shape Style](/documentation/swiftui/shapestyle) protocol — like a [Color](/documentation/swiftui/color), [Material](/documentation/swiftui/material), or [Hierarchical Shape Style](/documentation/swiftui/hierarchicalshapestyle) — behind a view. For example, you can add the [regular Material](/documentation/swiftui/shapestyle/regularmaterial) behind a [Label](/documentation/swiftui/label):

```swift
struct FlagLabel: View {
    var body: some View {
        Label("Flag", systemImage: "flag.fill")
            .padding()
            .background(.regularMaterial)
    }
}
```

SwiftUI anchors the style to the view’s bounds. For the example above, the background fills the entirety of the label’s frame, which includes the padding:



SwiftUI limits the background style’s extent to the modified view’s container-relative shape. You can see this effect if you constrain the `FlagLabel` view with a [containerShape(_:)](/documentation/swiftui/view/containershape(_:)) modifier:

```swift
FlagLabel()
    .containerShape(RoundedRectangle(cornerRadius: 16))
```

The background takes on the specified container shape:



By default, the background ignores safe area insets on all edges, but you can provide a specific set of edges to ignore, or an empty set to respect safe area insets on all edges:

```swift
Rectangle()
    .background(
        .regularMaterial,
        ignoresSafeAreaEdges: []) // Ignore no safe area insets.
```

If you want to specify a [View](/documentation/swiftui/view) or a stack of views as the background, use [background(alignment:content:)](/documentation/swiftui/view/background(alignment:content:)) instead. To specify a [Shape](/documentation/swiftui/shape) or [Insettable Shape](/documentation/swiftui/insettableshape), use [background(_:in:fillStyle:)](/documentation/swiftui/view/background(_:in:fillstyle:)) . To configure the background of a presentation, like a sheet, use [presentationBackground(_:)](/documentation/swiftui/view/presentationbackground(_:)).

## Layering views

- [Adding a background to your view](/documentation/swiftui/adding-a-background-to-your-view)
- [ZStack](/documentation/swiftui/zstack)
- [zIndex(_:)](/documentation/swiftui/view/zindex(_:))
- [background(alignment:content:)](/documentation/swiftui/view/background(alignment:content:))
- [background(ignoresSafeAreaEdges:)](/documentation/swiftui/view/background(ignoressafeareaedges:))
- [background(_:in:fillStyle:)](/documentation/swiftui/view/background(_:in:fillstyle:))
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
