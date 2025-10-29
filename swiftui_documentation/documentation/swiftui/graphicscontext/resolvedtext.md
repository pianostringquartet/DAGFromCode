---
title: GraphicsContext.ResolvedText
description: A text view resolved to a particular environment.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/resolvedtext
timestamp: 2025-10-29T00:14:33.099Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Structure**

# GraphicsContext.ResolvedText

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A text view resolved to a particular environment.

```swift
struct ResolvedText
```

## Overview

You resolve a [Text](/documentation/swiftui/text) view in preparation for drawing it into a context, either manually by calling [resolve(_:)](/documentation/swiftui/graphicscontext/resolve(_:)-4dx65) or automatically when calling [draw(_:in:)](/documentation/swiftui/graphicscontext/draw(_:in:)-5opqf) or [draw(_:at:anchor:)](/documentation/swiftui/graphicscontext/draw(_:at:anchor:)-5dgmd). The resolved text view takes into account environment values like the display resolution and current color scheme.

## Getting the text properties

- [firstBaseline(in:)](/documentation/swiftui/graphicscontext/resolvedtext/firstbaseline(in:)) Gets the distance from the first line’s ascender to its baseline.
- [lastBaseline(in:)](/documentation/swiftui/graphicscontext/resolvedtext/lastbaseline(in:)) Gets the distance from the first line’s ascender to the last line’s baseline.
- [measure(in:)](/documentation/swiftui/graphicscontext/resolvedtext/measure(in:)) Measures the size of the resolved text for a given area into which the text should be placed.
- [shading](/documentation/swiftui/graphicscontext/resolvedtext/shading) The shading to fill uncolored text regions with.

## Resolving a drawn entity

- [resolve(_:)](/documentation/swiftui/graphicscontext/resolve(_:))
- [resolveSymbol(id:)](/documentation/swiftui/graphicscontext/resolvesymbol(id:))
- [GraphicsContext.ResolvedSymbol](/documentation/swiftui/graphicscontext/resolvedsymbol)
- [GraphicsContext.ResolvedImage](/documentation/swiftui/graphicscontext/resolvedimage)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
