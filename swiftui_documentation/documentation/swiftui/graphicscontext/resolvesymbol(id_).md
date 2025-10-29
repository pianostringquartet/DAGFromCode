---
title: resolveSymbol(id:)
description: Gets the identified child view as a resolved symbol, if the view exists.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/resolvesymbol(id:)
timestamp: 2025-10-29T00:15:15.912Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Instance Method**

# resolveSymbol(id:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Gets the identified child view as a resolved symbol, if the view exists.

```swift
func resolveSymbol<ID>(id: ID) -> GraphicsContext.ResolvedSymbol? where ID : Hashable
```

## Parameters

**id**

The value that you used to tag the view when you define it in the `symbols` parameter of the [Canvas](/documentation/swiftui/canvas) initializer [init(opaque:colorMode:rendersAsynchronously:renderer:symbols:)](/documentation/swiftui/canvas/init(opaque:colormode:rendersasynchronously:renderer:symbols:)).



## Return Value

The resolved symbol, or `nil` if SwiftUI can’t find a child view with the given `id`.

## Resolving a drawn entity

- [resolve(_:)](/documentation/swiftui/graphicscontext/resolve(_:))
- [GraphicsContext.ResolvedSymbol](/documentation/swiftui/graphicscontext/resolvedsymbol)
- [GraphicsContext.ResolvedImage](/documentation/swiftui/graphicscontext/resolvedimage)
- [GraphicsContext.ResolvedText](/documentation/swiftui/graphicscontext/resolvedtext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
