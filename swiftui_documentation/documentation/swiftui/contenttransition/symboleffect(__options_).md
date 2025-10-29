---
title: symbolEffect(_:options:)
description: Creates a content transition that applies the symbol Replace animation to symbol images that it is applied to.
source: https://developer.apple.com/documentation/swiftui/contenttransition/symboleffect(_:options:)
timestamp: 2025-10-29T00:09:18.924Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [contenttransition](/documentation/swiftui/contenttransition)

**Type Method**

# symbolEffect(_:options:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates a content transition that applies the symbol Replace animation to symbol images that it is applied to.

```swift
static func symbolEffect<T>(_ effect: T, options: SymbolEffectOptions = .default) -> ContentTransition where T : ContentTransitionSymbolEffect, T : SymbolEffect
```

## Return Value

A new content transition.

## Getting content transitions

- [identity](/documentation/swiftui/contenttransition/identity)
- [interpolate](/documentation/swiftui/contenttransition/interpolate)
- [numericText(countsDown:)](/documentation/swiftui/contenttransition/numerictext(countsdown:))
- [numericText(value:)](/documentation/swiftui/contenttransition/numerictext(value:))
- [opacity](/documentation/swiftui/contenttransition/opacity)
- [symbolEffect](/documentation/swiftui/contenttransition/symboleffect)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
