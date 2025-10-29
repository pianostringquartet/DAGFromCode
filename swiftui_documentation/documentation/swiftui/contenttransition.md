---
title: ContentTransition
description: A kind of transition that applies to the content within a single view, rather than to the insertion or removal of a view.
source: https://developer.apple.com/documentation/swiftui/contenttransition
timestamp: 2025-10-29T00:09:57.022Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ContentTransition

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A kind of transition that applies to the content within a single view, rather than to the insertion or removal of a view.

```swift
struct ContentTransition
```

## Overview

Set the behavior of content transitions within a view with the [contentTransition(_:)](/documentation/swiftui/view/contenttransition(_:)) modifier, passing in one of the defined transitions, such as [opacity](/documentation/swiftui/contenttransition/opacity) or [interpolate](/documentation/swiftui/contenttransition/interpolate) as the parameter.

> [!TIP]
> Content transitions only take effect within transactions that apply an [Animation](/documentation/swiftui/animation) to the views inside the [contentTransition(_:)](/documentation/swiftui/view/contenttransition(_:)) modifier.

Content transitions only take effect within the context of an [Animation](/documentation/swiftui/animation) block.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting content transitions

- [identity](/documentation/swiftui/contenttransition/identity) The identity content transition, which indicates that content changes shouldn’t animate.
- [interpolate](/documentation/swiftui/contenttransition/interpolate) A content transition that indicates the views attempt to interpolate their contents during transitions, where appropriate.
- [numericText(countsDown:)](/documentation/swiftui/contenttransition/numerictext(countsdown:)) Creates a content transition intended to be used with  views displaying numeric text. In certain environments changes to the text will enable a nonstandard transition tailored to numeric characters that count up or down.
- [numericText(value:)](/documentation/swiftui/contenttransition/numerictext(value:)) Creates a content transition intended to be used with  views displaying numbers.
- [opacity](/documentation/swiftui/contenttransition/opacity) A content transition that indicates content fades from transparent to opaque on insertion, and from opaque to transparent on removal.
- [symbolEffect](/documentation/swiftui/contenttransition/symboleffect) A content transition that applies the default symbol effect transition to symbol images within the inserted or removed view hierarchy. Other views are unaffected by this transition.
- [symbolEffect(_:options:)](/documentation/swiftui/contenttransition/symboleffect(_:options:)) Creates a content transition that applies the symbol Replace animation to symbol images that it is applied to.

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
- [PlaceholderContentView](/documentation/swiftui/placeholdercontentview)
- [navigationTransition(_:)](/documentation/swiftui/view/navigationtransition(_:))
- [NavigationTransition](/documentation/swiftui/navigationtransition)
- [matchedTransitionSource(id:in:)](/documentation/swiftui/view/matchedtransitionsource(id:in:))
- [matchedTransitionSource(id:in:configuration:)](/documentation/swiftui/view/matchedtransitionsource(id:in:configuration:))
- [MatchedTransitionSourceConfiguration](/documentation/swiftui/matchedtransitionsourceconfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
