---
title: symbols
description: A view that provides child views that you can use in the drawing callback.
source: https://developer.apple.com/documentation/swiftui/canvas/symbols
timestamp: 2025-10-29T00:09:09.406Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [canvas](/documentation/swiftui/canvas)

**Instance Property**

# symbols

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A view that provides child views that you can use in the drawing callback.

```swift
var symbols: Symbols
```

## Discussion

Uniquely tag each child view using the `View/tag(_:)` modifier, so that you can find them from within your renderer using the [resolveSymbol(id:)](/documentation/swiftui/graphicscontext/resolvesymbol(id:)) method.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
