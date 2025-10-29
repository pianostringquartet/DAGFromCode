---
title: ScrollTransitionConfiguration.Threshold
description: Describes a specific point in the progression of a target view within a container from hidden (fully outside the container) to visible.
source: https://developer.apple.com/documentation/swiftui/scrolltransitionconfiguration/threshold
timestamp: 2025-10-29T00:11:50.695Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scrolltransitionconfiguration](/documentation/swiftui/scrolltransitionconfiguration)

**Structure**

# ScrollTransitionConfiguration.Threshold

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Describes a specific point in the progression of a target view within a container from hidden (fully outside the container) to visible.

```swift
struct Threshold
```

## Getting the threshold

- [centered](/documentation/swiftui/scrolltransitionconfiguration/threshold/centered) The target view is centered within the container
- [hidden](/documentation/swiftui/scrolltransitionconfiguration/threshold/hidden)
- [visible](/documentation/swiftui/scrolltransitionconfiguration/threshold/visible)
- [visible(_:)](/documentation/swiftui/scrolltransitionconfiguration/threshold/visible(_:)) The target view is visible by the given amount, where zero is fully hidden, and one is fully visible.

## Modifying the threshold

- [inset(by:)](/documentation/swiftui/scrolltransitionconfiguration/threshold/inset(by:)) Returns a threshold that is met when the target view is closer to the center of the container by . Use negative values to move the threshold away from the center.
- [interpolated(towards:amount:)](/documentation/swiftui/scrolltransitionconfiguration/threshold/interpolated(towards:amount:)) Creates a new threshold that combines this threshold value with another threshold, interpolated by the given amount.

## Accessing the configuration

- [animation(_:)](/documentation/swiftui/scrolltransitionconfiguration/animation(_:))
- [threshold(_:)](/documentation/swiftui/scrolltransitionconfiguration/threshold(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
