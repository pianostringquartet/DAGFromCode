---
title: AsymmetricTransition
description: A composite  that uses a different transition for insertion versus removal.
source: https://developer.apple.com/documentation/swiftui/asymmetrictransition
timestamp: 2025-10-29T00:14:49.253Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# AsymmetricTransition

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A composite  that uses a different transition for insertion versus removal.

```swift
struct AsymmetricTransition<Insertion, Removal> where Insertion : Transition, Removal : Transition
```

## Conforms To

- [Transition](/documentation/swiftui/transition)

## Creating the transition

- [init(insertion:removal:)](/documentation/swiftui/asymmetrictransition/init(insertion:removal:)) Creates a composite  that uses a different transition for insertion versus removal.

## Getting transition properties

- [insertion](/documentation/swiftui/asymmetrictransition/insertion) The  defining the insertion phase of .
- [removal](/documentation/swiftui/asymmetrictransition/removal) The  defining the removal phase of .

## Defining transitions

- [transition(_:)](/documentation/swiftui/view/transition(_:))
- [Transition](/documentation/swiftui/transition)
- [TransitionProperties](/documentation/swiftui/transitionproperties)
- [TransitionPhase](/documentation/swiftui/transitionphase)
- [AnyTransition](/documentation/swiftui/anytransition)
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
