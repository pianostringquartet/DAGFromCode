---
title: NavigationTransition
description: A type that defines the transition to use when navigating to a view.
source: https://developer.apple.com/documentation/swiftui/navigationtransition
timestamp: 2025-10-29T00:15:04.650Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# NavigationTransition

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> A type that defines the transition to use when navigating to a view.

```swift
protocol NavigationTransition
```

## Conforming Types

- [AutomaticNavigationTransition](/documentation/swiftui/automaticnavigationtransition)
- [ZoomNavigationTransition](/documentation/swiftui/zoomnavigationtransition)

## Getting built-in transitions

- [automatic](/documentation/swiftui/navigationtransition/automatic) A style that automatically chooses the appropriate presentation transition for the current context.
- [zoom(sourceID:in:)](/documentation/swiftui/navigationtransition/zoom(sourceid:in:)) A navigation transition that zooms the appearing view from a given source view.

## Supporting Types

- [AutomaticNavigationTransition](/documentation/swiftui/automaticnavigationtransition) A style that automatically chooses the appropriate presentation transition for the current context.
- [ZoomNavigationTransition](/documentation/swiftui/zoomnavigationtransition) A navigation transition that zooms the appearing view from a given source view. Indicate the source view using the  modifier.

## Defining transitions

- [transition(_:)](/documentation/swiftui/view/transition(_:))
- [Transition](/documentation/swiftui/transition)
- [TransitionProperties](/documentation/swiftui/transitionproperties)
- [TransitionPhase](/documentation/swiftui/transitionphase)
- [AsymmetricTransition](/documentation/swiftui/asymmetrictransition)
- [AnyTransition](/documentation/swiftui/anytransition)
- [contentTransition(_:)](/documentation/swiftui/view/contenttransition(_:))
- [contentTransition](/documentation/swiftui/environmentvalues/contenttransition)
- [contentTransitionAddsDrawingGroup](/documentation/swiftui/environmentvalues/contenttransitionaddsdrawinggroup)
- [ContentTransition](/documentation/swiftui/contenttransition)
- [PlaceholderContentView](/documentation/swiftui/placeholdercontentview)
- [navigationTransition(_:)](/documentation/swiftui/view/navigationtransition(_:))
- [matchedTransitionSource(id:in:)](/documentation/swiftui/view/matchedtransitionsource(id:in:))
- [matchedTransitionSource(id:in:configuration:)](/documentation/swiftui/view/matchedtransitionsource(id:in:configuration:))
- [MatchedTransitionSourceConfiguration](/documentation/swiftui/matchedtransitionsourceconfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
