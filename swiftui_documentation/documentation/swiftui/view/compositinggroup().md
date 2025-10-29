---
title: compositingGroup()
description: Wraps this view in a compositing group.
source: https://developer.apple.com/documentation/swiftui/view/compositinggroup()
timestamp: 2025-10-29T00:11:27.433Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# compositingGroup()

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Wraps this view in a compositing group.

```swift
nonisolated func compositingGroup() -> some View
```

## Return Value

A view that wraps this view in a compositing group.

## Discussion

A compositing group makes compositing effects in this view’s ancestor views, such as opacity and the blend mode, take effect before this view is rendered.

Use `compositingGroup()` to apply effects to a parent view before applying effects to this view.

In the example below the `compositingGroup()` modifier separates the application of effects into stages. It applies the [opacity(_:)](/documentation/swiftui/view/opacity(_:)) effect to the VStack before the `blur(radius:)` effect is applied to the views inside the enclosed [ZStack](/documentation/swiftui/zstack). This limits the scope of the opacity change to the outermost view.

```swift
VStack {
    ZStack {
        Text("CompositingGroup")
            .foregroundColor(.black)
            .padding(20)
            .background(Color.red)
        Text("CompositingGroup")
            .blur(radius: 2)
    }
    .font(.largeTitle)
    .compositingGroup()
    .opacity(0.9)
}
```



## Compositing views

- [blendMode(_:)](/documentation/swiftui/view/blendmode(_:))
- [drawingGroup(opaque:colorMode:)](/documentation/swiftui/view/drawinggroup(opaque:colormode:))
- [BlendMode](/documentation/swiftui/blendmode)
- [ColorRenderingMode](/documentation/swiftui/colorrenderingmode)
- [CompositorContent](/documentation/swiftui/compositorcontent)
- [CompositorContentBuilder](/documentation/swiftui/compositorcontentbuilder)
- [AnyCompositorContent](/documentation/swiftui/anycompositorcontent)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
