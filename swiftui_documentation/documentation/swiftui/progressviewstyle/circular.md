---
title: circular
description: The style of a progress view that uses a circular gauge to indicate the partial completion of an activity.
source: https://developer.apple.com/documentation/swiftui/progressviewstyle/circular
timestamp: 2025-10-29T00:09:13.820Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [progressviewstyle](/documentation/swiftui/progressviewstyle)

**Type Property**

# circular

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> The style of a progress view that uses a circular gauge to indicate the partial completion of an activity.

```swift
@MainActor @preconcurrency static var circular: CircularProgressViewStyle { get }
```

## Discussion

On watchOS, and in widgets and complications, a circular progress view appears as a gauge with the [accessory Circular Capacity](/documentation/swiftui/gaugestyle/accessorycircularcapacity) style. If the progress view is indeterminate, the gauge is empty.

In cases where no determinate circular progress view style is available, circular progress views use an indeterminate style.

## Getting built-in progress view styles

- [automatic](/documentation/swiftui/progressviewstyle/automatic)
- [linear](/documentation/swiftui/progressviewstyle/linear)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
