---
title: TimelineSchedule
description: A type that provides a sequence of dates for use as a schedule.
source: https://developer.apple.com/documentation/swiftui/timelineschedule
timestamp: 2025-10-29T00:11:47.770Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# TimelineSchedule

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A type that provides a sequence of dates for use as a schedule.

```swift
protocol TimelineSchedule
```

## Overview

Types that conform to this protocol implement a particular kind of schedule by defining an [entries(from:mode:)](/documentation/swiftui/timelineschedule/entries(from:mode:)) method that returns a sequence of dates. Use a timeline schedule type when you initialize a [Timeline View](/documentation/swiftui/timelineview). For example, you can create a timeline view that updates every second, starting from some `startDate`, using a periodic schedule returned by [periodic(from:by:)](/documentation/swiftui/timelineschedule/periodic(from:by:)):

```swift
TimelineView(.periodic(from: startDate, by: 1.0)) { context in
    // View content goes here.
}
```

You can also create custom timeline schedules. The timeline view updates its content according to the sequence of dates produced by the schedule.

## Conforming Types

- [AnimationTimelineSchedule](/documentation/swiftui/animationtimelineschedule)
- [EveryMinuteTimelineSchedule](/documentation/swiftui/everyminutetimelineschedule)
- [ExplicitTimelineSchedule](/documentation/swiftui/explicittimelineschedule)
- [PeriodicTimelineSchedule](/documentation/swiftui/periodictimelineschedule)

## Getting built-in schedules

- [animation](/documentation/swiftui/timelineschedule/animation) A pausable schedule of dates updating at a frequency no more quickly than the provided interval.
- [animation(minimumInterval:paused:)](/documentation/swiftui/timelineschedule/animation(minimuminterval:paused:)) A pausable schedule of dates updating at a frequency no more quickly than the provided interval.
- [everyMinute](/documentation/swiftui/timelineschedule/everyminute) A schedule for updating a timeline view at the start of every minute.
- [explicit(_:)](/documentation/swiftui/timelineschedule/explicit(_:)) A schedule for updating a timeline view at explicit points in time.
- [periodic(from:by:)](/documentation/swiftui/timelineschedule/periodic(from:by:)) A schedule for updating a timeline view at regular intervals.

## Getting a sequence of dates

- [entries(from:mode:)](/documentation/swiftui/timelineschedule/entries(from:mode:)) Provides a sequence of dates starting around a given date.
- [Entries](/documentation/swiftui/timelineschedule/entries) The sequence of dates within a schedule.

## Specifying a mode

- [TimelineSchedule.Mode](/documentation/swiftui/timelineschedule/mode) An alias for the timeline schedule update mode.
- [TimelineScheduleMode](/documentation/swiftui/timelineschedulemode) A mode of operation for timeline schedule updates.

## Supporting types

- [AnimationTimelineSchedule](/documentation/swiftui/animationtimelineschedule) A pausable schedule of dates updating at a frequency no more quickly than the provided interval.
- [EveryMinuteTimelineSchedule](/documentation/swiftui/everyminutetimelineschedule) A schedule for updating a timeline view at the start of every minute.
- [ExplicitTimelineSchedule](/documentation/swiftui/explicittimelineschedule) A schedule for updating a timeline view at explicit points in time.
- [PeriodicTimelineSchedule](/documentation/swiftui/periodictimelineschedule) A schedule for updating a timeline view at regular intervals.

## Updating a view on a schedule

- [Updating watchOS apps with timelines](/documentation/watchOS-Apps/updating-watchos-apps-with-timelines)
- [TimelineView](/documentation/swiftui/timelineview)
- [TimelineViewDefaultContext](/documentation/swiftui/timelineviewdefaultcontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
