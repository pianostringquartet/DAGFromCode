---
title: identity
description: The identity content transition, which indicates that content changes shouldn’t animate.
source: https://developer.apple.com/documentation/swiftui/contenttransition/identity
timestamp: 2025-10-29T00:10:22.416Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [contenttransition](/documentation/swiftui/contenttransition)

**Type Property**

# identity

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> The identity content transition, which indicates that content changes shouldn’t animate.

```swift
static let identity: ContentTransition
```

## Discussion

You can pass this value to a [contentTransition(_:)](/documentation/swiftui/view/contenttransition(_:)) modifier to selectively disable animations that would otherwise be applied by a [withAnimation(_:_:)](/documentation/swiftui/withanimation(_:_:)) block.

## Getting content transitions

- [interpolate](/documentation/swiftui/contenttransition/interpolate)
- [numericText(countsDown:)](/documentation/swiftui/contenttransition/numerictext(countsdown:))
- [numericText(value:)](/documentation/swiftui/contenttransition/numerictext(value:))
- [opacity](/documentation/swiftui/contenttransition/opacity)
- [symbolEffect](/documentation/swiftui/contenttransition/symboleffect)
- [symbolEffect(_:options:)](/documentation/swiftui/contenttransition/symboleffect(_:options:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
