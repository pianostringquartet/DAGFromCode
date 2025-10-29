---
title: transform
description: The current transform matrix, defining user space coordinates.
source: https://developer.apple.com/documentation/swiftui/graphicscontext/transform
timestamp: 2025-10-29T00:13:05.885Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [graphicscontext](/documentation/swiftui/graphicscontext)

**Instance Property**

# transform

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The current transform matrix, defining user space coordinates.

```swift
var transform: CGAffineTransform { get set }
```

## Discussion

Modify this matrix to transform content that you subsequently draw into the context. Changes that you make don’t affect existing content.

## Applying transforms

- [scaleBy(x:y:)](/documentation/swiftui/graphicscontext/scaleby(x:y:))
- [rotate(by:)](/documentation/swiftui/graphicscontext/rotate(by:))
- [translateBy(x:y:)](/documentation/swiftui/graphicscontext/translateby(x:y:))
- [concatenate(_:)](/documentation/swiftui/graphicscontext/concatenate(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
