---
title: init(_:)
description: Creates a schedule composed of an explicit sequence of dates.
source: https://developer.apple.com/documentation/swiftui/explicittimelineschedule/init(_:)
timestamp: 2025-10-29T00:13:16.366Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [explicittimelineschedule](/documentation/swiftui/explicittimelineschedule)

**Initializer**

# init(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Creates a schedule composed of an explicit sequence of dates.

```swift
init(_ dates: Entries)
```

## Parameters

**dates**

The sequence of dates at which a timeline view updates. Use a monotonically increasing sequence of dates, and ensure that at least one is in the future.



## Discussion

Use the [entries(from:mode:)](/documentation/swiftui/explicittimelineschedule/entries(from:mode:)) method to get the sequence of dates.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
