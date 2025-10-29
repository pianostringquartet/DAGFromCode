---
title: resolve(_:)
description: Gets a version of an image that’s fixed with the current values of the graphics context’s environment.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/resolve(_:)
timestamp: 2025-10-29T00:09:29.485Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Instance Method**

# resolve(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Gets a version of an image that’s fixed with the current values of the graphics context’s environment.

```swift
func resolve(_ image: Image) -> GraphicsContext.ResolvedImage
```

## Parameters

**image**

The [Image](/documentation/swiftui/image) to resolve.



## Return Value

An image that’s resolved into the current context’s environment, taking into account environment values like the display resolution and current color scheme.

## Discussion

You can measure the resolved image by looking at its [size](/documentation/swiftui/graphicscontext/resolvedimage/size) and [baseline](/documentation/swiftui/graphicscontext/resolvedimage/baseline) properties. You can draw the resolved image with the context’s [draw(_:in:style:)](/documentation/swiftui/graphicscontext/draw(_:in:style:)-7rvee) or [draw(_:at:anchor:)](/documentation/swiftui/graphicscontext/draw(_:at:anchor:)-1z5wt) method.

## Resolving a drawn entity

- [resolveSymbol(id:)](/documentation/swiftui/graphicscontext/resolvesymbol(id:))
- [GraphicsContext.ResolvedSymbol](/documentation/swiftui/graphicscontext/resolvedsymbol)
- [GraphicsContext.ResolvedImage](/documentation/swiftui/graphicscontext/resolvedimage)
- [GraphicsContext.ResolvedText](/documentation/swiftui/graphicscontext/resolvedtext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
