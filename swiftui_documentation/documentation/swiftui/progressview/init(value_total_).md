---
title: init(value:total:)
description: Creates a progress view for showing determinate progress.
source: https://developer.apple.com/documentation/swiftui/progressview/init(value:total:)
timestamp: 2025-10-29T00:13:34.868Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [progressview](/documentation/swiftui/progressview)

**Initializer**

# init(value:total:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Creates a progress view for showing determinate progress.

```swift
nonisolated init<V>(value: V?, total: V = 1.0) where Label == EmptyView, CurrentValueLabel == EmptyView, V : BinaryFloatingPoint
```

## Parameters

**value**

The completed amount of the task to this point, in a range of `0.0` to `total`, or `nil` if the progress is indeterminate.



**total**

The full amount representing the complete scope of the task, meaning the task is complete if `value` equals `total`. The default value is `1.0`.



## Discussion

If the value is non-`nil`, but outside the range of `0.0` through `total`, the progress view pins the value to those limits, rounding to the nearest possible bound. A value of `nil` represents indeterminate progress, in which case the progress view ignores `total`.

## Creating a determinate progress view

- [init(_:)](/documentation/swiftui/progressview/init(_:)-l5vj)
- [init(_:value:total:)](/documentation/swiftui/progressview/init(_:value:total:))
- [init(value:total:label:)](/documentation/swiftui/progressview/init(value:total:label:))
- [init(value:total:label:currentValueLabel:)](/documentation/swiftui/progressview/init(value:total:label:currentvaluelabel:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
