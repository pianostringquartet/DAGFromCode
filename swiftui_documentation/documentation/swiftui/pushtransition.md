---
title: PushTransition
description: A transition that when added to a view will animate the view’s insertion by moving it in from the specified edge while fading it in, and animate its removal by moving it out towards the opposite edge and fading it out.
source: https://developer.apple.com/documentation/swiftui/pushtransition
timestamp: 2025-10-29T00:14:52.767Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# PushTransition

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A transition that when added to a view will animate the view’s insertion by moving it in from the specified edge while fading it in, and animate its removal by moving it out towards the opposite edge and fading it out.

```swift
struct PushTransition
```

## Conforms To

- [Transition](/documentation/swiftui/transition)

## Creating the transition

- [init(edge:)](/documentation/swiftui/pushtransition/init(edge:)) Creates a transition that animates a view by moving and fading it.
- [edge](/documentation/swiftui/pushtransition/edge) The edge from which the view will be animated in.

## Supporting types

- [BlurReplaceTransition](/documentation/swiftui/blurreplacetransition)
- [IdentityTransition](/documentation/swiftui/identitytransition)
- [MoveTransition](/documentation/swiftui/movetransition)
- [OffsetTransition](/documentation/swiftui/offsettransition)
- [OpacityTransition](/documentation/swiftui/opacitytransition)
- [ScaleTransition](/documentation/swiftui/scaletransition)
- [SlideTransition](/documentation/swiftui/slidetransition)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
