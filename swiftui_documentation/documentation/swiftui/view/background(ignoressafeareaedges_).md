---
title: background(ignoresSafeAreaEdges:)
description: Sets the view’s background to the default background style.
source: https://developer.apple.com/documentation/swiftui/view/background(ignoressafeareaedges:)
timestamp: 2025-10-29T00:11:22.650Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# background(ignoresSafeAreaEdges:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Sets the view’s background to the default background style.

```swift
nonisolated func background(ignoresSafeAreaEdges edges: Edge.Set = .all) -> some View
```

## Parameters

**edges**

The set of edges for which to ignore safe area insets when adding the background. The default value is [all](/documentation/swiftui/edge/set/all). Specify an empty set to respect safe area insets on all edges.



## Return Value

A view with the [background](/documentation/swiftui/shapestyle/background) shape style drawn behind it.

## Discussion

This modifier behaves like [background(_:ignoresSafeAreaEdges:)](/documentation/swiftui/view/background(_:ignoressafeareaedges:)), except that it always uses the [background](/documentation/swiftui/shapestyle/background) shape style. For example, you can add a background to a [Label](/documentation/swiftui/label):

```swift
ZStack {
    Color.teal
    Label("Flag", systemImage: "flag.fill")
        .padding()
        .background()
}
```

Without the background modifier, the teal color behind the label shows through the label. With the modifier, the label’s text and icon appear backed by a region filled with a color that’s appropriate for light or dark appearance:



If you want to specify a [View](/documentation/swiftui/view) or a stack of views as the background, use [background(alignment:content:)](/documentation/swiftui/view/background(alignment:content:)) instead. To specify a [Shape](/documentation/swiftui/shape) or [Insettable Shape](/documentation/swiftui/insettableshape), use [background(_:in:fillStyle:)](/documentation/swiftui/view/background(_:in:fillstyle:)). To configure the background of a presentation, like a sheet, use [presentationBackground(_:)](/documentation/swiftui/view/presentationbackground(_:)).

## Layering views

- [Adding a background to your view](/documentation/swiftui/adding-a-background-to-your-view)
- [ZStack](/documentation/swiftui/zstack)
- [zIndex(_:)](/documentation/swiftui/view/zindex(_:))
- [background(alignment:content:)](/documentation/swiftui/view/background(alignment:content:))
- [background(_:ignoresSafeAreaEdges:)](/documentation/swiftui/view/background(_:ignoressafeareaedges:))
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
