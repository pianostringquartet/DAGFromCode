---
title: draw(_:at:anchor:)
description: Draws a resolved image into the context, aligning an anchor within the image to a point in the context.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/draw(_:at:anchor:)
timestamp: 2025-10-29T00:09:33.971Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Instance Method**

# draw(_:at:anchor:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Draws a resolved image into the context, aligning an anchor within the image to a point in the context.

```swift
func draw(_ image: GraphicsContext.ResolvedImage, at point: CGPoint, anchor: UnitPoint = .center)
```

## Parameters

**image**

The [Resolved Image](/documentation/swiftui/graphicscontext/resolvedimage) to draw. Get a resolved image from an [Image](/documentation/swiftui/image) by calling [resolve(_:)](/documentation/swiftui/graphicscontext/resolve(_:)-898z6). Alternatively, you can call [draw(_:at:anchor:)](/documentation/swiftui/graphicscontext/draw(_:at:anchor:)-7l217) with an [Image](/documentation/swiftui/image), and that method performs the resolution automatically.



**point**

A point within the rectangle of the resolved image to anchor to a point in the context.



**anchor**

A [Unit Point](/documentation/swiftui/unitpoint) within the context to align the image with. The default is [center](/documentation/swiftui/unitpoint/center).



## Discussion

The current context state defines the full drawing operation. For example, the current transformation and clip shapes affect how SwiftUI draws the image.

## Drawing images, text, and views

- [draw(_:in:)](/documentation/swiftui/graphicscontext/draw(_:in:))
- [draw(_:in:style:)](/documentation/swiftui/graphicscontext/draw(_:in:style:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
