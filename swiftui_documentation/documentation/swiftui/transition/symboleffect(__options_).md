---
title: symbolEffect(_:options:)
description: Creates a transition that applies the provided effect to symbol images within the inserted or removed view hierarchy. Other views are unaffected by this transition.
source: https://developer.apple.com/documentation/swiftui/transition/symboleffect(_:options:)
timestamp: 2025-10-29T00:11:16.240Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [transition](/documentation/swiftui/transition)

**Type Method**

# symbolEffect(_:options:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates a transition that applies the provided effect to symbol images within the inserted or removed view hierarchy. Other views are unaffected by this transition.

```swift
@MainActor @preconcurrency static func symbolEffect<T>(_ effect: T, options: SymbolEffectOptions = .default) -> SymbolEffectTransition where T : SymbolEffect, T : TransitionSymbolEffect
```

## Parameters

**effect**

The symbol effect value.



## Return Value

A new transition.

## Getting built-in transitions

- [blurReplace](/documentation/swiftui/transition/blurreplace)
- [blurReplace(_:)](/documentation/swiftui/transition/blurreplace(_:))
- [identity](/documentation/swiftui/transition/identity)
- [move(edge:)](/documentation/swiftui/transition/move(edge:))
- [offset(_:)](/documentation/swiftui/transition/offset(_:))
- [offset(x:y:)](/documentation/swiftui/transition/offset(x:y:))
- [opacity](/documentation/swiftui/transition/opacity)
- [push(from:)](/documentation/swiftui/transition/push(from:))
- [scale](/documentation/swiftui/transition/scale)
- [scale(_:anchor:)](/documentation/swiftui/transition/scale(_:anchor:))
- [slide](/documentation/swiftui/transition/slide)
- [symbolEffect](/documentation/swiftui/transition/symboleffect)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
