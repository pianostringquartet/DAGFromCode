---
title: render(rasterizationScale:renderer:)
description: Draws the renderer’s current contents to an arbitrary Core Graphics context.
source: https://developer.apple.com/documentation/swiftui/imagerenderer/render(rasterizationscale:renderer:)
timestamp: 2025-10-29T00:09:53.659Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [imagerenderer](/documentation/swiftui/imagerenderer)

**Instance Method**

# render(rasterizationScale:renderer:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Draws the renderer’s current contents to an arbitrary Core Graphics context.

```swift
@MainActor final func render(rasterizationScale: CGFloat = 1, renderer: (CGSize, (CGContext) -> Void) -> Void)
```

## Parameters

**rasterizationScale**

The scale factor for converting user interface points to pixels when rasterizing parts of the view that can’t be represented as native Core Graphics drawing commands.



**renderer**

The closure that sets up the Core Graphics context and renders the view. This closure receives two parameters: the size of the view and a function that you invoke in the closure to render the view at the reported size. This function takes a [CGContext](/documentation/CoreGraphics/CGContext) parameter, and assumes a bottom-left coordinate space origin.



## Discussion

Use this method to rasterize the renderer’s content to a [CGContext](/documentation/CoreGraphics/CGContext) you provide. The `renderer` closure receives two parameters: the current size of the view, and a function that renders the view to your `CGContext`. Implement the closure to provide a suitable `CGContext`, then invoke the function to render the content to that context.

## Rendering images

- [cgImage](/documentation/swiftui/imagerenderer/cgimage)
- [nsImage](/documentation/swiftui/imagerenderer/nsimage)
- [uiImage](/documentation/swiftui/imagerenderer/uiimage)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
