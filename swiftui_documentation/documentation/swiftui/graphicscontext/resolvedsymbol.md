---
title: GraphicsContext.ResolvedSymbol
description: A static sequence of drawing operations that may be drawn multiple times, preserving their resolution independence.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/resolvedsymbol
timestamp: 2025-10-29T00:10:36.788Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Structure**

# GraphicsContext.ResolvedSymbol

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A static sequence of drawing operations that may be drawn multiple times, preserving their resolution independence.

```swift
struct ResolvedSymbol
```

## Overview

You resolve a child view in preparation for drawing it into a context by calling [resolveSymbol(id:)](/documentation/swiftui/graphicscontext/resolvesymbol(id:)). The resolved view takes into account environment values like the display resolution and current color scheme.

## Getting the symbol properties

- [size](/documentation/swiftui/graphicscontext/resolvedsymbol/size) The dimensions of the resolved symbol.

## Resolving a drawn entity

- [resolve(_:)](/documentation/swiftui/graphicscontext/resolve(_:))
- [resolveSymbol(id:)](/documentation/swiftui/graphicscontext/resolvesymbol(id:))
- [GraphicsContext.ResolvedImage](/documentation/swiftui/graphicscontext/resolvedimage)
- [GraphicsContext.ResolvedText](/documentation/swiftui/graphicscontext/resolvedtext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
