---
title: symbolEffect(_:options:value:)
description: Returns a new view with a symbol effect added to it.
source: https://developer.apple.com/documentation/swiftui/view/symboleffect(_:options:value:)
timestamp: 2025-10-29T00:13:22.570Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# symbolEffect(_:options:value:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Returns a new view with a symbol effect added to it.

```swift
nonisolated func symbolEffect<T, U>(_ effect: T, options: SymbolEffectOptions = .default, value: U) -> some View where T : DiscreteSymbolEffect, T : SymbolEffect, U : Equatable
```

## Parameters

**effect**

A symbol effect to add to the view. Existing effects added by ancestors of the view are preserved, but may be overridden by the new effect. Added effects will be applied to the ``SwiftUI/Image` views contained by the child view.



**value**

The value to monitor for changes, the animation is triggered each time the value changes.



## Return Value

A copy of the view with a symbol effect added.

## Discussion

The following example adds a bounce effect to two symbol images, the animation will play each time `counter` changes:

```swift
VStack {
    Image(systemName: "bolt.slash.fill")
    Image(systemName: "folder.fill.badge.person.crop")
}
.symbolEffect(.bounce, value: counter)
```

## Managing symbol effects

- [symbolEffect(_:options:isActive:)](/documentation/swiftui/view/symboleffect(_:options:isactive:))
- [symbolEffectsRemoved(_:)](/documentation/swiftui/view/symboleffectsremoved(_:))
- [SymbolEffectTransition](/documentation/swiftui/symboleffecttransition)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
