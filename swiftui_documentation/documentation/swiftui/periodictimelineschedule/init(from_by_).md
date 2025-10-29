---
title: init(from:by:)
description: Creates a periodic update schedule.
source: https://developer.apple.com/documentation/swiftui/periodictimelineschedule/init(from:by:)
timestamp: 2025-10-29T00:10:02.097Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [periodictimelineschedule](/documentation/swiftui/periodictimelineschedule)

**Initializer**

# init(from:by:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Creates a periodic update schedule.

```swift
init(from startDate: Date, by interval: TimeInterval)
```

## Parameters

**startDate**

The date on which to start the sequence.



**interval**

The time interval between successive sequence entries.



## Discussion

Use the [entries(from:mode:)](/documentation/swiftui/periodictimelineschedule/entries(from:mode:)) method to get the sequence of dates.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
