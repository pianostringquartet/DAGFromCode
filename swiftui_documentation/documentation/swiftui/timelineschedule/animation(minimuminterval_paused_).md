---
title: animation(minimumInterval:paused:)
description: A pausable schedule of dates updating at a frequency no more quickly than the provided interval.
source: https://developer.apple.com/documentation/swiftui/timelineschedule/animation(minimuminterval:paused:)
timestamp: 2025-10-29T00:13:23.131Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [timelineschedule](/documentation/swiftui/timelineschedule)

**Type Method**

# animation(minimumInterval:paused:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A pausable schedule of dates updating at a frequency no more quickly than the provided interval.

```swift
static func animation(minimumInterval: Double? = nil, paused: Bool = false) -> AnimationTimelineSchedule
```

## Parameters

**minimumInterval**

The minimum interval to update the schedule at. Pass nil to let the system pick an appropriate update interval.



**paused**

If the schedule should stop generating updates.



## Getting built-in schedules

- [animation](/documentation/swiftui/timelineschedule/animation)
- [everyMinute](/documentation/swiftui/timelineschedule/everyminute)
- [explicit(_:)](/documentation/swiftui/timelineschedule/explicit(_:))
- [periodic(from:by:)](/documentation/swiftui/timelineschedule/periodic(from:by:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
