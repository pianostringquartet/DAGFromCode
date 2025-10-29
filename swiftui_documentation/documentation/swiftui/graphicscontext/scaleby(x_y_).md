---
title: scaleBy(x:y:)
description: Scales subsequent drawing operations by an amount in each dimension.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/scaleby(x:y:)
timestamp: 2025-10-29T00:15:25.407Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Instance Method**

# scaleBy(x:y:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Scales subsequent drawing operations by an amount in each dimension.

```swift
mutating func scaleBy(x: CGFloat, y: CGFloat)
```

## Parameters

**x**

The amount to scale in the horizontal direction.



**y**

The amount to scale in the vertical direction.



## Discussion

Calling this method is equivalent to updating the context’s [transform](/documentation/swiftui/graphicscontext/transform) directly using the given scale factors:

```swift
transform = transform.scaledBy(x: x, y: y)
```

## Applying transforms

- [rotate(by:)](/documentation/swiftui/graphicscontext/rotate(by:))
- [translateBy(x:y:)](/documentation/swiftui/graphicscontext/translateby(x:y:))
- [concatenate(_:)](/documentation/swiftui/graphicscontext/concatenate(_:))
- [transform](/documentation/swiftui/graphicscontext/transform)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
