---
title: AnyTransition
description: A type-erased transition.
source: https://developer.apple.com/documentation/swiftui/anytransition
timestamp: 2025-10-29T00:13:09.458Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# AnyTransition

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A type-erased transition.

```swift
@frozen struct AnyTransition
```

## Overview

- See Also: `Transition`

## Getting built-in transitions

- [identity](/documentation/swiftui/anytransition/identity) A transition that returns the input view, unmodified, as the output view.
- [move(edge:)](/documentation/swiftui/anytransition/move(edge:)) Returns a transition that moves the view away, towards the specified edge of the view.
- [offset(_:)](/documentation/swiftui/anytransition/offset(_:))
- [offset(x:y:)](/documentation/swiftui/anytransition/offset(x:y:))
- [opacity](/documentation/swiftui/anytransition/opacity) A transition from transparent to opaque on insertion, and from opaque to transparent on removal.
- [push(from:)](/documentation/swiftui/anytransition/push(from:)) Creates a transition that when added to a view will animate the view’s insertion by moving it in from the specified edge while fading it in, and animate its removal by moving it out towards the opposite edge and fading it out.
- [scale](/documentation/swiftui/anytransition/scale) Returns a transition that scales the view.
- [scale(scale:anchor:)](/documentation/swiftui/anytransition/scale(scale:anchor:)) Returns a transition that scales the view by the specified amount.
- [slide](/documentation/swiftui/anytransition/slide) A transition that inserts by moving in from the leading edge, and removes by moving out towards the trailing edge.

## Combining and configuring transitions

- [animation(_:)](/documentation/swiftui/anytransition/animation(_:)) Attaches an animation to this transition.
- [asymmetric(insertion:removal:)](/documentation/swiftui/anytransition/asymmetric(insertion:removal:)) Provides a composite transition that uses a different transition for insertion versus removal.
- [combined(with:)](/documentation/swiftui/anytransition/combined(with:)) Combines this transition with another, returning a new transition that is the result of both transitions being applied.

## Creating a custom transition

- [init(_:)](/documentation/swiftui/anytransition/init(_:)) Create an instance that type-erases .
- [modifier(active:identity:)](/documentation/swiftui/anytransition/modifier(active:identity:)) Returns a transition defined between an active modifier and an identity modifier.

## Defining transitions

- [transition(_:)](/documentation/swiftui/view/transition(_:))
- [Transition](/documentation/swiftui/transition)
- [TransitionProperties](/documentation/swiftui/transitionproperties)
- [TransitionPhase](/documentation/swiftui/transitionphase)
- [AsymmetricTransition](/documentation/swiftui/asymmetrictransition)
- [contentTransition(_:)](/documentation/swiftui/view/contenttransition(_:))
- [contentTransition](/documentation/swiftui/environmentvalues/contenttransition)
- [contentTransitionAddsDrawingGroup](/documentation/swiftui/environmentvalues/contenttransitionaddsdrawinggroup)
- [ContentTransition](/documentation/swiftui/contenttransition)
- [PlaceholderContentView](/documentation/swiftui/placeholdercontentview)
- [navigationTransition(_:)](/documentation/swiftui/view/navigationtransition(_:))
- [NavigationTransition](/documentation/swiftui/navigationtransition)
- [matchedTransitionSource(id:in:)](/documentation/swiftui/view/matchedtransitionsource(id:in:))
- [matchedTransitionSource(id:in:configuration:)](/documentation/swiftui/view/matchedtransitionsource(id:in:configuration:))
- [MatchedTransitionSourceConfiguration](/documentation/swiftui/matchedtransitionsourceconfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
