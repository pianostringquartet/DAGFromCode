---
title: accessibilityIgnoresInvertColors(_:)
description: Sets whether this view should ignore the system Smart Invert setting.
source: https://developer.apple.com/documentation/swiftui/view/accessibilityignoresinvertcolors(_:)
timestamp: 2025-10-29T00:11:55.883Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# accessibilityIgnoresInvertColors(_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Sets whether this view should ignore the system Smart Invert setting.

```swift
nonisolated func accessibilityIgnoresInvertColors(_ active: Bool = true) -> some View
```

## Parameters

**active**

A true value ignores the system Smart Invert setting. A false value follows the system setting.



## Discussion

Use this modifier to suppress Smart Invert in a view that shouldn’t be inverted. Or pass an `active` argument of `false` to begin following the Smart Invert setting again when it was previously disabled.

## Managing color

- [accessibilityInvertColors](/documentation/swiftui/environmentvalues/accessibilityinvertcolors)
- [accessibilityDifferentiateWithoutColor](/documentation/swiftui/environmentvalues/accessibilitydifferentiatewithoutcolor)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
