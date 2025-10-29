---
title: TimelineViewDefaultContext
description: Information passed to a timeline view’s content callback.
source: https://developer.apple.com/documentation/swiftui/timelineviewdefaultcontext
timestamp: 2025-10-29T00:13:01.103Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Type Alias**

# TimelineViewDefaultContext

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Information passed to a timeline view’s content callback.

```swift
typealias TimelineViewDefaultContext = TimelineView<EveryMinuteTimelineSchedule, Never>.Context
```

## Discussion

The context includes both the date from the schedule that triggered the callback, and a cadence that you can use to customize the appearance of your view. For example, you might choose to display the second hand of an analog clock only when the cadence is [seconds](/documentation/swiftui/timelineview/context/cadence-swift.enum/seconds) or faster.

> [!NOTE]
> This type alias uses a specific concrete instance of [Context](/documentation/swiftui/timelineview/context) that all timeline views can use. It does this to prevent introducing an unnecessary generic parameter dependency on the context type.

## Updating a view on a schedule

- [Updating watchOS apps with timelines](/documentation/watchOS-Apps/updating-watchos-apps-with-timelines)
- [TimelineView](/documentation/swiftui/timelineview)
- [TimelineSchedule](/documentation/swiftui/timelineschedule)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
