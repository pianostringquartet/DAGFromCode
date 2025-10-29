---
title: translateBy(x:y:)
description: Moves subsequent drawing operations by an amount in each dimension.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/translateby(x:y:)
timestamp: 2025-10-29T00:11:00.793Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Instance Method**

# translateBy(x:y:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Moves subsequent drawing operations by an amount in each dimension.

```swift
mutating func translateBy(x: CGFloat, y: CGFloat)
```

## Parameters

**x**

The amount to move in the horizontal direction.



**y**

The amount to move in the vertical direction.



## Discussion

Calling this method is equivalent to updating the context’s [transform](/documentation/swiftui/graphicscontext/transform) directly using the given translation amount:

```swift
transform = transform.translatedBy(x: x, y: y)
```

## Applying transforms

- [scaleBy(x:y:)](/documentation/swiftui/graphicscontext/scaleby(x:y:))
- [rotate(by:)](/documentation/swiftui/graphicscontext/rotate(by:))
- [concatenate(_:)](/documentation/swiftui/graphicscontext/concatenate(_:))
- [transform](/documentation/swiftui/graphicscontext/transform)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
