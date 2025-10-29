---
title: entries(from:mode:)
description: Provides a sequence of dates starting around a given date.
source: https://developer.apple.com/documentation/swiftui/timelineschedule/entries(from:mode:)
timestamp: 2025-10-29T00:15:11.807Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [timelineschedule](/documentation/swiftui/timelineschedule)

**Instance Method**

# entries(from:mode:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Provides a sequence of dates starting around a given date.

```swift
func entries(from startDate: Date, mode: Self.Mode) -> Self.Entries
```

## Parameters

**startDate**

The date by which the sequence begins.



**mode**

An indication of whether the schedule updates normally, or with some other cadence.



## Return Value

A sequence of dates in ascending order.

## Discussion

A [Timeline View](/documentation/swiftui/timelineview) that you create calls this method to figure out when to update its content. The method returns a sequence of dates in increasing order that represent points in time when the timeline view should update. Types that conform to the [Timeline Schedule](/documentation/swiftui/timelineschedule) protocol, like the one returned by [periodic(from:by:)](/documentation/swiftui/timelineschedule/periodic(from:by:)), or a custom schedule that you define, implement a custom version of this method to implement a particular kind of schedule.

One or more dates in the sequence might be before the given `startDate`, in which case the timeline view performs its first update at `startDate` using the entry that most closely precedes that date. For example, if in response to a `startDate` of `10:09:55`, the method returns a sequence with the values `10:09:00`, `10:10:00`, `10:11:00`, and so on, the timeline view performs an initial update at `10:09:55` (using the `10:09:00` entry), followed by another update at the beginning of every minute, starting at `10:10:00`.

A type that conforms should adjust its behavior based on the `mode` when possible. For example, a periodic schedule providing updates for a timer could restrict updates to once per minute while in the [low Frequency](/documentation/swiftui/timelineschedulemode/lowfrequency) mode:

```swift
func entries(
    from startDate: Date, mode: TimelineScheduleMode
) -> PeriodicTimelineSchedule {
    .periodic(
        from: startDate, by: (mode == .lowFrequency ? 60.0 : 1.0)
    )
}
```

## Getting a sequence of dates

- [Entries](/documentation/swiftui/timelineschedule/entries)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
