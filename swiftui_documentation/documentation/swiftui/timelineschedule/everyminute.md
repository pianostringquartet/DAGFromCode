---
title: everyMinute
description: A schedule for updating a timeline view at the start of every minute.
source: https://developer.apple.com/documentation/swiftui/timelineschedule/everyminute
timestamp: 2025-10-29T00:11:44.708Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [timelineschedule](/documentation/swiftui/timelineschedule)

**Type Property**

# everyMinute

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A schedule for updating a timeline view at the start of every minute.

```swift
static var everyMinute: EveryMinuteTimelineSchedule { get }
```

## Discussion

Initialize a [Timeline View](/documentation/swiftui/timelineview) with an every minute timeline schedule when you want to schedule timeline view updates at the start of every minute:

```swift
TimelineView(.everyMinute) { context in
    Text(context.date.description)
}
```

The schedule provides the first date as the beginning of the minute in which you use it to initialize the timeline view. For example, if you create the timeline view at `10:09:38`, the schedule’s first entry is `10:09:00`. In response, the timeline view performs its first update immediately, providing the beginning of the current minute, namely `10:09:00`, as context to its content. Subsequent updates happen at the beginning of each minute that follows.

The schedule defines the [Entries](/documentation/swiftui/everyminutetimelineschedule/entries) structure to return the sequence of dates when the timeline view calls the [entries(from:mode:)](/documentation/swiftui/everyminutetimelineschedule/entries(from:mode:)) method.

## Getting built-in schedules

- [animation](/documentation/swiftui/timelineschedule/animation)
- [animation(minimumInterval:paused:)](/documentation/swiftui/timelineschedule/animation(minimuminterval:paused:))
- [explicit(_:)](/documentation/swiftui/timelineschedule/explicit(_:))
- [periodic(from:by:)](/documentation/swiftui/timelineschedule/periodic(from:by:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
