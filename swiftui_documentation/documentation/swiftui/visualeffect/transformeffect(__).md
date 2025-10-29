---
title: transformEffect(_:)
description: Applies an affine transformation to the view’s rendered output.
source: https://developer.apple.com/documentation/swiftui/visualeffect/transformeffect(_:)
timestamp: 2025-10-29T00:11:17.757Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [visualeffect](/documentation/swiftui/visualeffect)

**Instance Method**

# transformEffect(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Applies an affine transformation to the view’s rendered output.

```swift
func transformEffect(_ transform: CGAffineTransform) -> some VisualEffect
```

## Parameters

**transform**

A [CGAffine Transform](/documentation/CoreFoundation/CGAffineTransform) to apply to the view.



## Return Value

An effect that applies an affine transformation to the view’s rendered output.

## Discussion

Use `transformEffect(_:)` to rotate, scale, translate, or skew the output of the view according to the provided [CGAffine Transform](/documentation/CoreFoundation/CGAffineTransform).

## Applying a transform

- [transform3DEffect(_:)](/documentation/swiftui/visualeffect/transform3deffect(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
