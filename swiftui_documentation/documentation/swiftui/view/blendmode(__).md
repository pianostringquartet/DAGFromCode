---
title: blendMode(_:)
description: Sets the blend mode for compositing this view with overlapping views.
source: https://developer.apple.com/documentation/swiftui/view/blendmode(_:)
timestamp: 2025-10-29T00:12:38.995Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# blendMode(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Sets the blend mode for compositing this view with overlapping views.

```swift
nonisolated func blendMode(_ blendMode: BlendMode) -> some View
```

## Parameters

**blendMode**

The [Blend Mode](/documentation/swiftui/blendmode) for compositing this view.



## Return Value

A view that applies `blendMode` to this view.

## Discussion

Use `blendMode(_:)` to combine overlapping views and use a different visual effect to produce the result. The [Blend Mode](/documentation/swiftui/blendmode) enumeration defines many possible effects.

In the example below, the two overlapping rectangles have a [color Burn](/documentation/swiftui/blendmode/colorburn) effect applied, which effectively removes the non-overlapping portion of the second image:

```swift
HStack {
    Color.yellow.frame(width: 50, height: 50, alignment: .center)

    Color.red.frame(width: 50, height: 50, alignment: .center)
        .rotationEffect(.degrees(45))
        .padding(-20)
        .blendMode(.colorBurn)
}
```



## Compositing views

- [compositingGroup()](/documentation/swiftui/view/compositinggroup())
- [drawingGroup(opaque:colorMode:)](/documentation/swiftui/view/drawinggroup(opaque:colormode:))
- [BlendMode](/documentation/swiftui/blendmode)
- [ColorRenderingMode](/documentation/swiftui/colorrenderingmode)
- [CompositorContent](/documentation/swiftui/compositorcontent)
- [CompositorContentBuilder](/documentation/swiftui/compositorcontentbuilder)
- [AnyCompositorContent](/documentation/swiftui/anycompositorcontent)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
