---
title: Transition
description: A description of view changes to apply when a view is added to and removed from the view hierarchy.
source: https://developer.apple.com/documentation/swiftui/transition
timestamp: 2025-10-29T00:09:56.032Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# Transition

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A description of view changes to apply when a view is added to and removed from the view hierarchy.

```swift
@MainActor @preconcurrency protocol Transition
```

## Overview

A transition should generally be made by applying one or more modifiers to the `content`. For symmetric transitions, the `isIdentity` property on `phase` can be used to change the properties of modifiers. For asymmetric transitions, the phase itself can be used to change those properties. Transitions should not use any identity-affecting changes like `.id`, `if`, and `switch` on the `content`, since doing so would reset the state of the view they’re applied to, causing wasted work and potentially surprising behavior when it appears and disappears.

The following code defines a transition that can be used to change the opacity and rotation when a view appears and disappears.

```swift
struct RotatingFadeTransition: Transition {
    func body(content: Content, phase: TransitionPhase) -> some View {
        content
          .opacity(phase.isIdentity ? 1.0 : 0.0)
          .rotationEffect(phase.rotation)
    }
}
extension TransitionPhase {
    fileprivate var rotation: Angle {
        switch self {
        case .willAppear: return .degrees(30)
        case .identity: return .zero
        case .didDisappear: return .degrees(-30)
        }
    }
}
```

A type conforming to this protocol inherits `@preconcurrency @MainActor` isolation from the protocol if the conformance is included in the type’s base declaration:

```swift
struct MyCustomType: Transition {
    // `@preconcurrency @MainActor` isolation by default
}
```

Isolation to the main actor is the default, but it’s not required. Declare the conformance in an extension to opt out of main actor isolation:

```swift
extension MyCustomType: Transition {
    // `nonisolated` by default
}
```

- See Also: `TransitionPhase`
- See Also: `AnyTransition`

## Conforming Types

- [AsymmetricTransition](/documentation/swiftui/asymmetrictransition)
- [BlurReplaceTransition](/documentation/swiftui/blurreplacetransition)
- [IdentityTransition](/documentation/swiftui/identitytransition)
- [MoveTransition](/documentation/swiftui/movetransition)
- [OffsetTransition](/documentation/swiftui/offsettransition)
- [OpacityTransition](/documentation/swiftui/opacitytransition)
- [PushTransition](/documentation/swiftui/pushtransition)
- [ScaleTransition](/documentation/swiftui/scaletransition)
- [SlideTransition](/documentation/swiftui/slidetransition)
- [SymbolEffectTransition](/documentation/swiftui/symboleffecttransition)

## Getting built-in transitions

- [blurReplace](/documentation/swiftui/transition/blurreplace) A transition that animates the insertion or removal of a view by combining blurring and scaling effects.
- [blurReplace(_:)](/documentation/swiftui/transition/blurreplace(_:)) A transition that animates the insertion or removal of a view by combining blurring and scaling effects.
- [identity](/documentation/swiftui/transition/identity) A transition that returns the input view, unmodified, as the output view.
- [move(edge:)](/documentation/swiftui/transition/move(edge:)) Returns a transition that moves the view away, towards the specified edge of the view.
- [offset(_:)](/documentation/swiftui/transition/offset(_:)) Returns a transition that offset the view by the specified amount.
- [offset(x:y:)](/documentation/swiftui/transition/offset(x:y:)) Returns a transition that offset the view by the specified x and y values.
- [opacity](/documentation/swiftui/transition/opacity) A transition from transparent to opaque on insertion, and from opaque to transparent on removal.
- [push(from:)](/documentation/swiftui/transition/push(from:)) Creates a transition that when added to a view will animate the view’s insertion by moving it in from the specified edge while fading it in, and animate its removal by moving it out towards the opposite edge and fading it out.
- [scale](/documentation/swiftui/transition/scale) Returns a transition that scales the view.
- [scale(_:anchor:)](/documentation/swiftui/transition/scale(_:anchor:)) Returns a transition that scales the view by the specified amount.
- [slide](/documentation/swiftui/transition/slide) A transition that inserts by moving in from the leading edge, and removes by moving out towards the trailing edge.
- [symbolEffect](/documentation/swiftui/transition/symboleffect) A transition that applies the default symbol effect transition to symbol images within the inserted or removed view hierarchy. Other views are unaffected by this transition.
- [symbolEffect(_:options:)](/documentation/swiftui/transition/symboleffect(_:options:)) Creates a transition that applies the provided effect to symbol images within the inserted or removed view hierarchy. Other views are unaffected by this transition.

## Configuring a transition

- [animation(_:)](/documentation/swiftui/transition/animation(_:)) Attaches an animation to this transition.
- [properties](/documentation/swiftui/transition/properties) Returns the properties this transition type has.

## Using a transition

- [apply(content:phase:)](/documentation/swiftui/transition/apply(content:phase:))
- [combined(with:)](/documentation/swiftui/transition/combined(with:))

## Creating a custom transition

- [body(content:phase:)](/documentation/swiftui/transition/body(content:phase:)) Gets the current body of the caller.
- [Body](/documentation/swiftui/transition/body) The type of view representing the body.
- [Transition.Content](/documentation/swiftui/transition/content) The content view type passed to .

## Supporting types

- [BlurReplaceTransition](/documentation/swiftui/blurreplacetransition) A transition that animates the insertion or removal of a view by combining blurring and scaling effects.
- [IdentityTransition](/documentation/swiftui/identitytransition) A transition that returns the input view, unmodified, as the output view.
- [MoveTransition](/documentation/swiftui/movetransition) Returns a transition that moves the view away, towards the specified edge of the view.
- [OffsetTransition](/documentation/swiftui/offsettransition) Returns a transition that offset the view by the specified amount.
- [OpacityTransition](/documentation/swiftui/opacitytransition) A transition from transparent to opaque on insertion, and from opaque to transparent on removal.
- [PushTransition](/documentation/swiftui/pushtransition) A transition that when added to a view will animate the view’s insertion by moving it in from the specified edge while fading it in, and animate its removal by moving it out towards the opposite edge and fading it out.
- [ScaleTransition](/documentation/swiftui/scaletransition) Returns a transition that scales the view.
- [SlideTransition](/documentation/swiftui/slidetransition) A transition that inserts by moving in from the leading edge, and removes by moving out towards the trailing edge.

## Defining transitions

- [transition(_:)](/documentation/swiftui/view/transition(_:))
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
- [MatchedTransitionSourceConfiguration](/documentation/swiftui/matchedtransitionsourceconfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
