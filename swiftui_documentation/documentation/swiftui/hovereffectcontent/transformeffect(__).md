---
title: transformEffect(_:)
description: Applies an affine transformation to the view’s rendered output.
source: https://developer.apple.com/documentation/swiftui/hovereffectcontent/transformeffect(_:)
timestamp: 2025-10-29T00:11:34.444Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [hovereffectcontent](/documentation/swiftui/hovereffectcontent)

**Instance Method**

# transformEffect(_:)

**Available on:** visionOS 2.0+

> Applies an affine transformation to the view’s rendered output.

```swift
func transformEffect(_ transform: CGAffineTransform) -> some HoverEffectContent
```

## Parameters

**transform**

A [CGAffine Transform](/documentation/CoreFoundation/CGAffineTransform) to apply to the view.



## Return Value

An effect that applies an affine transformation to the view’s rendered output.

## Discussion

Use `transformEffect(_:)` to rotate, scale, translate, or skew the output of the view according to the provided [CGAffine Transform](/documentation/CoreFoundation/CGAffineTransform).

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
