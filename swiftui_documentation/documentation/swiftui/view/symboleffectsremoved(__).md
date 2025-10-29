---
title: symbolEffectsRemoved(_:)
description: Returns a new view with its inherited symbol image effects either removed or left unchanged.
source: https://developer.apple.com/documentation/swiftui/view/symboleffectsremoved(_:)
timestamp: 2025-10-29T00:14:47.576Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# symbolEffectsRemoved(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Returns a new view with its inherited symbol image effects either removed or left unchanged.

```swift
nonisolated func symbolEffectsRemoved(_ isEnabled: Bool = true) -> some View
```

## Parameters

**isEnabled**

Whether to remove inherited symbol effects or not.



## Return Value

A copy of the view with its symbol effects either removed or left unchanged.

## Discussion

The following example adds a repeating pulse effect to two symbol images, but then disables the effect on one of them:

```swift
VStack {
    Image(systemName: "bolt.slash.fill") // does not pulse
        .symbolEffectsRemoved()
    Image(systemName: "folder.fill.badge.person.crop") // pulses
}
.symbolEffect(.pulse)
```

## Managing symbol effects

- [symbolEffect(_:options:isActive:)](/documentation/swiftui/view/symboleffect(_:options:isactive:))
- [symbolEffect(_:options:value:)](/documentation/swiftui/view/symboleffect(_:options:value:))
- [SymbolEffectTransition](/documentation/swiftui/symboleffecttransition)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
