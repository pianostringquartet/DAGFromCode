---
title: push(from:)
description: Creates a transition that when added to a view will animate the view’s insertion by moving it in from the specified edge while fading it in, and animate its removal by moving it out towards the opposite edge and fading it out.
source: https://developer.apple.com/documentation/swiftui/anytransition/push(from:)
timestamp: 2025-10-29T00:14:12.534Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [anytransition](/documentation/swiftui/anytransition)

**Type Method**

# push(from:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a transition that when added to a view will animate the view’s insertion by moving it in from the specified edge while fading it in, and animate its removal by moving it out towards the opposite edge and fading it out.

```swift
static func push(from edge: Edge) -> AnyTransition
```

## Parameters

**edge**

The edge from which the view will be animated in.



## Return Value

A transition that animates a view by moving and fading it.

## Getting built-in transitions

- [identity](/documentation/swiftui/anytransition/identity)
- [move(edge:)](/documentation/swiftui/anytransition/move(edge:))
- [offset(_:)](/documentation/swiftui/anytransition/offset(_:))
- [offset(x:y:)](/documentation/swiftui/anytransition/offset(x:y:))
- [opacity](/documentation/swiftui/anytransition/opacity)
- [scale](/documentation/swiftui/anytransition/scale)
- [scale(scale:anchor:)](/documentation/swiftui/anytransition/scale(scale:anchor:))
- [slide](/documentation/swiftui/anytransition/slide)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
