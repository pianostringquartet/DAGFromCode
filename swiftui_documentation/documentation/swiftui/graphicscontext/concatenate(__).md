---
title: concatenate(_:)
description: Appends the given transform to the context’s existing transform.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/concatenate(_:)
timestamp: 2025-10-29T00:09:35.475Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Instance Method**

# concatenate(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Appends the given transform to the context’s existing transform.

```swift
mutating func concatenate(_ matrix: CGAffineTransform)
```

## Parameters

**matrix**

A transform to append to the existing transform.



## Discussion

Calling this method is equivalent to updating the context’s [transform](/documentation/swiftui/graphicscontext/transform) directly using the `matrix` parameter:

```swift
transform = matrix.concatenating(transform)
```

## Applying transforms

- [scaleBy(x:y:)](/documentation/swiftui/graphicscontext/scaleby(x:y:))
- [rotate(by:)](/documentation/swiftui/graphicscontext/rotate(by:))
- [translateBy(x:y:)](/documentation/swiftui/graphicscontext/translateby(x:y:))
- [transform](/documentation/swiftui/graphicscontext/transform)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
