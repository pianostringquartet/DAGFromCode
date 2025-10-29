---
title: explicit(_:)
description: A schedule for updating a timeline view at explicit points in time.
source: https://developer.apple.com/documentation/swiftui/timelineschedule/explicit(_:)
timestamp: 2025-10-29T00:10:07.800Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [timelineschedule](/documentation/swiftui/timelineschedule)

**Type Method**

# explicit(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A schedule for updating a timeline view at explicit points in time.

```swift
static func explicit<S>(_ dates: S) -> ExplicitTimelineSchedule<S> where Self == ExplicitTimelineSchedule<S>, S : Sequence, S.Element == Date
```

## Parameters

**dates**

The sequence of dates at which a timeline view updates. Use a monotonically increasing sequence of dates, and ensure that at least one is in the future.



## Discussion

Initialize a [Timeline View](/documentation/swiftui/timelineview) with an explicit timeline schedule when you want to schedule view updates at particular points in time:

```swift
let dates = [
    Date(timeIntervalSinceNow: 10), // Update ten seconds from now,
    Date(timeIntervalSinceNow: 12) // and a few seconds later.
]

struct MyView: View {
    var body: some View {
        TimelineView(.explicit(dates)) { context in
            Text(context.date.description)
        }
    }
}
```

The timeline view updates its content on exactly the dates that you specify, until it runs out of dates, after which it stops changing. If the dates you provide are in the past, the timeline view updates exactly once with the last entry. If you only provide dates in the future, the timeline view renders with the current date until the first date arrives. If you provide one or more dates in the past and one or more in the future, the view renders the most recent past date, refreshing normally on all subsequent dates.

## Getting built-in schedules

- [animation](/documentation/swiftui/timelineschedule/animation)
- [animation(minimumInterval:paused:)](/documentation/swiftui/timelineschedule/animation(minimuminterval:paused:))
- [everyMinute](/documentation/swiftui/timelineschedule/everyminute)
- [periodic(from:by:)](/documentation/swiftui/timelineschedule/periodic(from:by:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
