---
title: draw(_:in:style:)
description: Draws a resolved image into the context, using the specified rectangle as a layout frame.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/draw(_:in:style:)
timestamp: 2025-10-29T00:13:58.141Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Instance Method**

# draw(_:in:style:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Draws a resolved image into the context, using the specified rectangle as a layout frame.

```swift
func draw(_ image: GraphicsContext.ResolvedImage, in rect: CGRect, style: FillStyle = FillStyle())
```

## Parameters

**image**

The [Resolved Image](/documentation/swiftui/graphicscontext/resolvedimage) to draw. Get a resolved image from an [Image](/documentation/swiftui/image) by calling [resolve(_:)](/documentation/swiftui/graphicscontext/resolve(_:)-898z6). Alternatively, you can call [draw(_:in:style:)](/documentation/swiftui/graphicscontext/draw(_:in:style:)-blhz) with an [Image](/documentation/swiftui/image), and that method performs the resolution automatically.



**rect**

The rectangle in the current user space to draw the image in.



**style**

A fill style to use when rasterizing the image.



## Discussion

The current context state defines the full drawing operation. For example, the current transformation and clip shapes affect how SwiftUI draws the image.

## Drawing images, text, and views

- [draw(_:in:)](/documentation/swiftui/graphicscontext/draw(_:in:))
- [draw(_:at:anchor:)](/documentation/swiftui/graphicscontext/draw(_:at:anchor:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
