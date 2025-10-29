---
title: withCGContext(content:)
description: Provides a Core Graphics context that you can use as a proxy to draw into this context.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/withcgcontext(content:)
timestamp: 2025-10-29T00:10:04.501Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Instance Method**

# withCGContext(content:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Provides a Core Graphics context that you can use as a proxy to draw into this context.

```swift
func withCGContext(content: (CGContext) throws -> Void) rethrows
```

## Parameters

**content**

A closure that receives a [CGContext](/documentation/CoreGraphics/CGContext) that you use to perform drawing operations, just like you draw into a [Graphics Context](/documentation/swiftui/graphicscontext) instance. Any filters, blend mode settings, clip masks, and other state set before calling `withCGContext(content:)` apply to drawing operations in the Core Graphics context as well. Any state you set on the Core Graphics context is lost when the closure returns. Accessing the Core Graphics context after the closure returns produces undefined behavior.



## Discussion

Use this method to use existing drawing code that relies on Core Graphics primitives.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
