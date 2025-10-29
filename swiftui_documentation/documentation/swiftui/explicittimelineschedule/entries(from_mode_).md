---
title: entries(from:mode:)
description: Provides the sequence of dates with which you initialized the schedule.
source: https://developer.apple.com/documentation/swiftui/explicittimelineschedule/entries(from:mode:)
timestamp: 2025-10-29T00:14:58.149Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [explicittimelineschedule](/documentation/swiftui/explicittimelineschedule)

**Instance Method**

# entries(from:mode:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Provides the sequence of dates with which you initialized the schedule.

```swift
func entries(from startDate: Date, mode: TimelineScheduleMode) -> Entries
```

## Parameters

**startDate**

The date from which the sequence begins. This particular implementation of the protocol method ignores the start date.



**mode**

The mode for the update schedule. This particular implementation of the protocol method ignores the mode.



## Return Value

The sequence of dates that you provided at initialization.

## Discussion

A [Timeline View](/documentation/swiftui/timelineview) that you create with a schedule calls this [Timeline Schedule](/documentation/swiftui/timelineschedule) method to ask the schedule when to update its content. The explicit timeline schedule implementation of this method returns the unmodified sequence of dates that you provided when you created the schedule with [explicit(_:)](/documentation/swiftui/timelineschedule/explicit(_:)). As a result, this particular implementation ignores the `startDate` and `mode` parameters.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
