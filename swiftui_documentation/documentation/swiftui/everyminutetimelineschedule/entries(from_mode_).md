---
title: entries(from:mode:)
description: Provides a sequence of per-minute dates starting from a given date.
source: https://developer.apple.com/documentation/swiftui/everyminutetimelineschedule/entries(from:mode:)
timestamp: 2025-10-29T00:15:16.478Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [everyminutetimelineschedule](/documentation/swiftui/everyminutetimelineschedule)

**Instance Method**

# entries(from:mode:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Provides a sequence of per-minute dates starting from a given date.

```swift
func entries(from startDate: Date, mode: TimelineScheduleMode) -> EveryMinuteTimelineSchedule.Entries
```

## Parameters

**startDate**

The date from which the sequence begins.



**mode**

The mode for the update schedule.



## Return Value

A sequence of per-minute dates in ascending order.

## Discussion

A [Timeline View](/documentation/swiftui/timelineview) that you create with an every minute schedule calls this method to ask the schedule when to update its content. The method returns a sequence of per-minute dates in increasing order, from earliest to latest, that represents when the timeline view updates.

For a `startDate` that’s exactly minute-aligned, the schedule’s sequence of dates starts at that time. Otherwise, it starts at the beginning of the specified minute. For example, for start dates of both `10:09:32` and `10:09:00`, the first entry in the sequence is `10:09:00`.

## Getting the sequence of dates

- [EveryMinuteTimelineSchedule.Entries](/documentation/swiftui/everyminutetimelineschedule/entries)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
