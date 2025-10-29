---
title: SymbolEffectTransition
description: Creates a transition that applies the Appear, Disappear, DrawOn or DrawOff symbol animation to symbol images within the inserted or removed view hierarchy.
source: https://developer.apple.com/documentation/swiftui/symboleffecttransition
timestamp: 2025-10-29T00:10:01.195Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SymbolEffectTransition

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates a transition that applies the Appear, Disappear, DrawOn or DrawOff symbol animation to symbol images within the inserted or removed view hierarchy.

```swift
@MainActor @frozen @preconcurrency struct SymbolEffectTransition
```

## Overview

Other views are unaffected by this transition.

## Conforms To

- [Transition](/documentation/swiftui/transition)

## Creating a transition

- [init(effect:options:)](/documentation/swiftui/symboleffecttransition/init(effect:options:))

## Managing symbol effects

- [symbolEffect(_:options:isActive:)](/documentation/swiftui/view/symboleffect(_:options:isactive:))
- [symbolEffect(_:options:value:)](/documentation/swiftui/view/symboleffect(_:options:value:))
- [symbolEffectsRemoved(_:)](/documentation/swiftui/view/symboleffectsremoved(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
