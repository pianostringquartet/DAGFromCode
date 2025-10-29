---
title: date
description: The date from the schedule that triggered the current view update.
source: https://developer.apple.com/documentation/swiftui/timelineview/context/date
timestamp: 2025-10-29T00:11:10.078Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [timelineview](/documentation/swiftui/timelineview) › [context](/documentation/swiftui/timelineview/context)

**Instance Property**

# date

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The date from the schedule that triggered the current view update.

```swift
let date: Date
```

## Discussion

The first time a [Timeline View](/documentation/swiftui/timelineview) closure receives this date, it might be in the past. For example, if you create an [every Minute](/documentation/swiftui/timelineschedule/everyminute) schedule at `10:09:55`, the schedule creates entries `10:09:00`, `10:10:00`, `10:11:00`, and so on. In response, the timeline view performs an initial update immediately, at `10:09:55`, but the context contains the `10:09:00` date entry. Subsequent entries arrive at their corresponding times.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
