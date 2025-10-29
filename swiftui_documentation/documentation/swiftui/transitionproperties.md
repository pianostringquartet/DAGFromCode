---
title: TransitionProperties
description: The properties a  can have.
source: https://developer.apple.com/documentation/swiftui/transitionproperties
timestamp: 2025-10-29T00:10:18.596Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# TransitionProperties

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> The properties a  can have.

```swift
struct TransitionProperties
```

## Overview

A transition can have properties that specify high level information about it. This can determine how a transition interacts with other features like Accessibility settings.

- See Also: `Transition`

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Creating the transition properties

- [init(hasMotion:)](/documentation/swiftui/transitionproperties/init(hasmotion:))
- [hasMotion](/documentation/swiftui/transitionproperties/hasmotion) Whether the transition includes motion.

## Defining transitions

- [transition(_:)](/documentation/swiftui/view/transition(_:))
- [Transition](/documentation/swiftui/transition)
- [TransitionPhase](/documentation/swiftui/transitionphase)
- [AsymmetricTransition](/documentation/swiftui/asymmetrictransition)
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
