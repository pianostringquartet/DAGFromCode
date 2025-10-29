---
title: visible(_:)
description: The target view is visible by the given amount, where zero is fully hidden, and one is fully visible.
source: https://developer.apple.com/documentation/swiftui/scrolltransitionconfiguration/threshold/visible(_:)
timestamp: 2025-10-29T00:10:45.751Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scrolltransitionconfiguration](/documentation/swiftui/scrolltransitionconfiguration) › [threshold](/documentation/swiftui/scrolltransitionconfiguration/threshold)

**Type Method**

# visible(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> The target view is visible by the given amount, where zero is fully hidden, and one is fully visible.

```swift
static func visible(_ amount: Double) -> ScrollTransitionConfiguration.Threshold
```

## Discussion

Values less than zero or greater than one are clamped.

## Getting the threshold

- [centered](/documentation/swiftui/scrolltransitionconfiguration/threshold/centered)
- [hidden](/documentation/swiftui/scrolltransitionconfiguration/threshold/hidden)
- [visible](/documentation/swiftui/scrolltransitionconfiguration/threshold/visible)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
