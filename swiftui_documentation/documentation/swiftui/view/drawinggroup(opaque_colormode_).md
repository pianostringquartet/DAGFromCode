---
title: drawingGroup(opaque:colorMode:)
description: Composites this view’s contents into an offscreen image before final display.
source: https://developer.apple.com/documentation/swiftui/view/drawinggroup(opaque:colormode:)
timestamp: 2025-10-29T00:09:44.096Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# drawingGroup(opaque:colorMode:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Composites this view’s contents into an offscreen image before final display.

```swift
nonisolated func drawingGroup(opaque: Bool = false, colorMode: ColorRenderingMode = .nonLinear) -> some View
```

## Parameters

**opaque**

A Boolean value that indicates whether the image is opaque. The default is `false`; if set to `true`, the alpha channel of the image must be `1`.



**colorMode**

One of the working color space and storage formats defined in [Color Rendering Mode](/documentation/swiftui/colorrenderingmode). The default is [non Linear](/documentation/swiftui/colorrenderingmode/nonlinear).



## Return Value

A view that composites this view’s contents into an offscreen image before display.

## Discussion

The `drawingGroup(opaque:colorMode:)` modifier flattens a subtree of views into a single view before rendering it.

In the example below, the contents of the view are composited to a single bitmap; the bitmap is then displayed in place of the view:

```swift
VStack {
    ZStack {
        Text("DrawingGroup")
            .foregroundColor(.black)
            .padding(20)
            .background(Color.red)
        Text("DrawingGroup")
            .blur(radius: 2)
    }
    .font(.largeTitle)
    .compositingGroup()
    .opacity(1.0)
}
 .background(Color.white)
 .drawingGroup()
```

> [!NOTE]
> Views backed by native platform views may not render into the image. Instead, they log a warning and display a placeholder image to highlight the error.



## Compositing views

- [blendMode(_:)](/documentation/swiftui/view/blendmode(_:))
- [compositingGroup()](/documentation/swiftui/view/compositinggroup())
- [BlendMode](/documentation/swiftui/blendmode)
- [ColorRenderingMode](/documentation/swiftui/colorrenderingmode)
- [CompositorContent](/documentation/swiftui/compositorcontent)
- [CompositorContentBuilder](/documentation/swiftui/compositorcontentbuilder)
- [AnyCompositorContent](/documentation/swiftui/anycompositorcontent)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
