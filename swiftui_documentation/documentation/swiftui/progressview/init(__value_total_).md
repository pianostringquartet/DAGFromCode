---
title: init(_:value:total:)
description: Creates a progress view for showing determinate progress that generates its label from a string.
source: https://developer.apple.com/documentation/swiftui/progressview/init(_:value:total:)
timestamp: 2025-10-29T00:12:18.062Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [progressview](/documentation/swiftui/progressview)

**Initializer**

# init(_:value:total:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Creates a progress view for showing determinate progress that generates its label from a string.

```swift
nonisolated init<S, V>(_ title: S, value: V?, total: V = 1.0) where Label == Text, CurrentValueLabel == EmptyView, S : StringProtocol, V : BinaryFloatingPoint
```

## Parameters

**title**

The string that describes the task in progress.



**value**

The completed amount of the task to this point, in a range of `0.0` to `total`, or `nil` if the progress is indeterminate.



**total**

The full amount representing the complete scope of the task, meaning the task is complete if `value` equals `total`. The default value is `1.0`.



## Discussion

If the value is non-`nil`, but outside the range of `0.0` through `total`, the progress view pins the value to those limits, rounding to the nearest possible bound. A value of `nil` represents indeterminate progress, in which case the progress view ignores `total`.

This initializer creates a [Text](/documentation/swiftui/text) view on your behalf, and treats the title similar to [init(verbatim:)](/documentation/swiftui/text/init(verbatim:)). See [Text](/documentation/swiftui/text) for more information about localizing strings. To initialize a determinate progress view with a localized string key, use the corresponding initializer that takes a `LocalizedStringKey` instance.

## Creating a determinate progress view

- [init(_:)](/documentation/swiftui/progressview/init(_:)-l5vj)
- [init(value:total:)](/documentation/swiftui/progressview/init(value:total:))
- [init(value:total:label:)](/documentation/swiftui/progressview/init(value:total:label:))
- [init(value:total:label:currentValueLabel:)](/documentation/swiftui/progressview/init(value:total:label:currentvaluelabel:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
