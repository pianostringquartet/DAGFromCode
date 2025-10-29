---
title: GraphicsContext.ResolvedImage
description: An image resolved to a particular environment.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/resolvedimage
timestamp: 2025-10-29T00:15:14.605Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Structure**

# GraphicsContext.ResolvedImage

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> An image resolved to a particular environment.

```swift
struct ResolvedImage
```

## Overview

You resolve an [Image](/documentation/swiftui/image) in preparation for drawing it into a context, either manually by calling [resolve(_:)](/documentation/swiftui/graphicscontext/resolve(_:)-898z6), or automatically when calling [draw(_:in:style:)](/documentation/swiftui/graphicscontext/draw(_:in:style:)-blhz) or [draw(_:at:anchor:)](/documentation/swiftui/graphicscontext/draw(_:at:anchor:)-1z5wt). The resolved image takes into account environment values like the display resolution and current color scheme.

## Getting the image properties

- [size](/documentation/swiftui/graphicscontext/resolvedimage/size) The size of the image.
- [baseline](/documentation/swiftui/graphicscontext/resolvedimage/baseline) The distance from the top of the image to its baseline.
- [shading](/documentation/swiftui/graphicscontext/resolvedimage/shading) An optional shading to fill the image with.

## Resolving a drawn entity

- [resolve(_:)](/documentation/swiftui/graphicscontext/resolve(_:))
- [resolveSymbol(id:)](/documentation/swiftui/graphicscontext/resolvesymbol(id:))
- [GraphicsContext.ResolvedSymbol](/documentation/swiftui/graphicscontext/resolvedsymbol)
- [GraphicsContext.ResolvedText](/documentation/swiftui/graphicscontext/resolvedtext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
