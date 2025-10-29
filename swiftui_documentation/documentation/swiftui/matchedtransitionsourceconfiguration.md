---
title: MatchedTransitionSourceConfiguration
description: A configuration that defines the appearance of a matched transition source.
source: https://developer.apple.com/documentation/swiftui/matchedtransitionsourceconfiguration
timestamp: 2025-10-29T00:09:21.668Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# MatchedTransitionSourceConfiguration

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> A configuration that defines the appearance of a matched transition source.

```swift
protocol MatchedTransitionSourceConfiguration : Sendable
```

## Inherits From

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Conforming Types

- [EmptyMatchedTransitionSourceConfiguration](/documentation/swiftui/emptymatchedtransitionsourceconfiguration)

## Instance Methods

- [background(_:)](/documentation/swiftui/matchedtransitionsourceconfiguration/background(_:)) Specifies a color that will be drawn behind the content within the matched transition source.
- [clipShape(_:)](/documentation/swiftui/matchedtransitionsourceconfiguration/clipshape(_:)) Applies the specified shape as to the matched transition source, clipping its content.
- [shadow(color:radius:x:y:)](/documentation/swiftui/matchedtransitionsourceconfiguration/shadow(color:radius:x:y:)) Applies the specified shadow effect to the matched transition source.

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
- [NavigationTransition](/documentation/swiftui/navigationtransition)
- [matchedTransitionSource(id:in:)](/documentation/swiftui/view/matchedtransitionsource(id:in:))
- [matchedTransitionSource(id:in:configuration:)](/documentation/swiftui/view/matchedtransitionsource(id:in:configuration:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
