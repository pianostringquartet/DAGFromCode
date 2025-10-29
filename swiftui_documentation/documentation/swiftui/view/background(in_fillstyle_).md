---
title: background(in:fillStyle:)
description: Sets the view’s background to an insettable shape filled with the default background style.
source: https://developer.apple.com/documentation/swiftui/view/background(in:fillstyle:)
timestamp: 2025-10-29T00:14:02.677Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# background(in:fillStyle:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Sets the view’s background to an insettable shape filled with the default background style.

```swift
nonisolated func background<S>(in shape: S, fillStyle: FillStyle = FillStyle()) -> some View where S : InsettableShape
```

## Parameters

**shape**

An instance of a type that conforms to [Insettable Shape](/documentation/swiftui/insettableshape) that SwiftUI draws behind the view using the [background](/documentation/swiftui/shapestyle/background) shape style.



**fillStyle**

The [Fill Style](/documentation/swiftui/fillstyle) to use when drawing the shape. The default style uses the nonzero winding number rule and antialiasing.



## Return Value

A view with the specified insettable shape drawn behind it.

## Discussion

This modifier behaves like [background(_:in:fillStyle:)](/documentation/swiftui/view/background(_:in:fillstyle:)), except that it always uses the [background](/documentation/swiftui/shapestyle/background) shape style to fill the specified insettable shape. For example, you can use a [Rounded Rectangle](/documentation/swiftui/roundedrectangle) as a background on a [Label](/documentation/swiftui/label):

```swift
ZStack {
    Color.teal
    Label("Flag", systemImage: "flag.fill")
        .padding()
        .background(in: RoundedRectangle(cornerRadius: 8))
}
```

Without the background modifier, the fill color shows through the label. With the modifier, the label’s text and icon appear backed by a shape filled with a color that’s appropriate for light or dark appearance:



To create a background with other [View](/documentation/swiftui/view) types — or with a stack of views — use [background(alignment:content:)](/documentation/swiftui/view/background(alignment:content:)) instead. To add a [Shape Style](/documentation/swiftui/shapestyle) as a background, use [background(_:ignoresSafeAreaEdges:)](/documentation/swiftui/view/background(_:ignoressafeareaedges:)).

## Layering views

- [Adding a background to your view](/documentation/swiftui/adding-a-background-to-your-view)
- [ZStack](/documentation/swiftui/zstack)
- [zIndex(_:)](/documentation/swiftui/view/zindex(_:))
- [background(alignment:content:)](/documentation/swiftui/view/background(alignment:content:))
- [background(_:ignoresSafeAreaEdges:)](/documentation/swiftui/view/background(_:ignoressafeareaedges:))
- [background(ignoresSafeAreaEdges:)](/documentation/swiftui/view/background(ignoressafeareaedges:))
- [background(_:in:fillStyle:)](/documentation/swiftui/view/background(_:in:fillstyle:))
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
