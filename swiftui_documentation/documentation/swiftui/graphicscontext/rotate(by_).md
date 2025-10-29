---
title: rotate(by:)
description: Rotates subsequent drawing operations by an angle.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/rotate(by:)
timestamp: 2025-10-29T00:11:56.593Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Instance Method**

# rotate(by:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Rotates subsequent drawing operations by an angle.

```swift
mutating func rotate(by angle: Angle)
```

## Parameters

**angle**

The amount to rotate.



## Discussion

Calling this method is equivalent to updating the context’s [transform](/documentation/swiftui/graphicscontext/transform) directly using the `angle` parameter:

```swift
transform = transform.rotated(by: angle.radians)
```

## Applying transforms

- [scaleBy(x:y:)](/documentation/swiftui/graphicscontext/scaleby(x:y:))
- [translateBy(x:y:)](/documentation/swiftui/graphicscontext/translateby(x:y:))
- [concatenate(_:)](/documentation/swiftui/graphicscontext/concatenate(_:))
- [transform](/documentation/swiftui/graphicscontext/transform)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
