---
title: draw(_:in:)
description: Draws a resolved symbol into the context, using the specified rectangle as a layout frame.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/draw(_:in:)
timestamp: 2025-10-29T00:11:28.913Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Instance Method**

# draw(_:in:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Draws a resolved symbol into the context, using the specified rectangle as a layout frame.

```swift
func draw(_ symbol: GraphicsContext.ResolvedSymbol, in rect: CGRect)
```

## Parameters

**symbol**

The [Resolved Symbol](/documentation/swiftui/graphicscontext/resolvedsymbol) to draw. Get a resolved symbol by calling [resolveSymbol(id:)](/documentation/swiftui/graphicscontext/resolvesymbol(id:)) with the identifier that you use to tag the corresponding child view during [Canvas](/documentation/swiftui/canvas) initialization.



**rect**

The rectangle in the current user space to draw the symbol in.



## Discussion

The current context state defines the full drawing operation. For example, the current transformation and clip shapes affect how SwiftUI draws the symbol.

## Drawing images, text, and views

- [draw(_:in:style:)](/documentation/swiftui/graphicscontext/draw(_:in:style:))
- [draw(_:at:anchor:)](/documentation/swiftui/graphicscontext/draw(_:at:anchor:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
