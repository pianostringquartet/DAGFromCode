---
title: entries(from:mode:)
description: Provides a sequence of periodic dates starting from around a given date.
source: https://developer.apple.com/documentation/swiftui/periodictimelineschedule/entries(from:mode:)
timestamp: 2025-10-29T00:11:16.657Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [periodictimelineschedule](/documentation/swiftui/periodictimelineschedule)

**Instance Method**

# entries(from:mode:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Provides a sequence of periodic dates starting from around a given date.

```swift
func entries(from startDate: Date, mode: TimelineScheduleMode) -> PeriodicTimelineSchedule.Entries
```

## Discussion

A [Timeline View](/documentation/swiftui/timelineview) that you create with a schedule calls this method to ask the schedule when to update its content. The method returns a sequence of equally spaced dates in increasing order that represent points in time when the timeline view should update.

The schedule defines its periodicity and phase aligment based on the parameters you pass to its [init(from:by:)](/documentation/swiftui/periodictimelineschedule/init(from:by:)) initializer. For example, for a `startDate` and `interval` of `10:09:30` and `60` seconds, the schedule prepares to issue dates half past each minute. The `startDate` that you pass to the `entries(from:mode:)` method then dictates the first date of the sequence as the beginning of the interval that the start date overlaps. Continuing the example above, a start date of `10:34:45` causes the first sequence entry to be `10:34:30`, because that’s the start of the interval in which the start date appears.

## Getting the sequence of dates

- [PeriodicTimelineSchedule.Entries](/documentation/swiftui/periodictimelineschedule/entries)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
