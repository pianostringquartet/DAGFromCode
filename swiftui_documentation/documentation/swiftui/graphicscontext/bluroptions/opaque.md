---
title: opaque
description: An option that causes the filter to ensure the result is completely opaque.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/bluroptions/opaque
timestamp: 2025-10-29T00:11:41.491Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext) › [bluroptions](/documentation/swiftui/graphicscontext/bluroptions)

**Type Property**

# opaque

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> An option that causes the filter to ensure the result is completely opaque.

```swift
static var opaque: GraphicsContext.BlurOptions { get }
```

## Discussion

The filter ensure opacity by dividing each pixel by its alpha value. The result may be undefined if the input to the filter isn’t also completely opaque.

## Getting blur options

- [dithersResult](/documentation/swiftui/graphicscontext/bluroptions/dithersresult)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
