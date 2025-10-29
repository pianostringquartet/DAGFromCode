---
title: opacity(_:)
description: Sets the transparency of the view.
source: https://developer.apple.com/documentation/swiftui/hovereffectcontent/opacity(_:)
timestamp: 2025-10-29T00:10:12.325Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [hovereffectcontent](/documentation/swiftui/hovereffectcontent)

**Instance Method**

# opacity(_:)

**Available on:** visionOS 2.0+

> Sets the transparency of the view.

```swift
func opacity(_ opacity: Double) -> some HoverEffectContent
```

## Parameters

**opacity**

A value between 0 (fully transparent) and 1 (fully opaque).



## Return Value

An effect that sets the transparency of the view.

## Discussion

When applying the `opacity(_:)` effect to a view that has already had its opacity transformed, the effect of the underlying opacity transformation is multiplied.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
