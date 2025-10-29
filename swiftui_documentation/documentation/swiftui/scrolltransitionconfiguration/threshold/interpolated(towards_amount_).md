---
title: interpolated(towards:amount:)
description: Creates a new threshold that combines this threshold value with another threshold, interpolated by the given amount.
source: https://developer.apple.com/documentation/swiftui/scrolltransitionconfiguration/threshold/interpolated(towards:amount:)
timestamp: 2025-10-29T00:15:24.582Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scrolltransitionconfiguration](/documentation/swiftui/scrolltransitionconfiguration) › [threshold](/documentation/swiftui/scrolltransitionconfiguration/threshold)

**Instance Method**

# interpolated(towards:amount:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates a new threshold that combines this threshold value with another threshold, interpolated by the given amount.

```swift
func interpolated(towards other: ScrollTransitionConfiguration.Threshold, amount: Double) -> ScrollTransitionConfiguration.Threshold
```

## Parameters

**other**

The second threshold value.



**amount**

The ratio with which this threshold is combined with the given threshold, where zero is equal to this threshold, 1.0 is equal to `other`, and values in between combine the two thresholds.



## Modifying the threshold

- [inset(by:)](/documentation/swiftui/scrolltransitionconfiguration/threshold/inset(by:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
