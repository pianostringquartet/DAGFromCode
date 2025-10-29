---
title: periodic(from:by:)
description: A schedule for updating a timeline view at regular intervals.
source: https://developer.apple.com/documentation/swiftui/timelineschedule/periodic(from:by:)
timestamp: 2025-10-29T00:10:20.726Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [timelineschedule](/documentation/swiftui/timelineschedule)

**Type Method**

# periodic(from:by:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A schedule for updating a timeline view at regular intervals.

```swift
static func periodic(from startDate: Date, by interval: TimeInterval) -> PeriodicTimelineSchedule
```

## Parameters

**startDate**

The date on which to start the sequence.



**interval**

The time interval between successive sequence entries.



## Discussion

Initialize a [Timeline View](/documentation/swiftui/timelineview) with a periodic timeline schedule when you want to schedule timeline view updates periodically with a custom interval:

```swift
TimelineView(.periodic(from: startDate, by: 3.0)) { context in
    Text(context.date.description)
}
```

The timeline view updates its content at the start date, and then again at dates separated in time by the interval amount, which is every three seconds in the example above. For a start date in the past, the view updates immediately, providing as context the date corresponding to the most recent interval boundary. The view then refreshes normally at subsequent interval boundaries. For a start date in the future, the view updates once with the current date, and then begins regular updates at the start date.

The schedule defines the [Entries](/documentation/swiftui/periodictimelineschedule/entries) structure to return the sequence of dates when the timeline view calls the [entries(from:mode:)](/documentation/swiftui/periodictimelineschedule/entries(from:mode:)) method.

## Getting built-in schedules

- [animation](/documentation/swiftui/timelineschedule/animation)
- [animation(minimumInterval:paused:)](/documentation/swiftui/timelineschedule/animation(minimuminterval:paused:))
- [everyMinute](/documentation/swiftui/timelineschedule/everyminute)
- [explicit(_:)](/documentation/swiftui/timelineschedule/explicit(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
