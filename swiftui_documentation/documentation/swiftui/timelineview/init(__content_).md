---
title: init(_:content:)
description: Creates a new timeline view that uses the given schedule.
source: https://developer.apple.com/documentation/swiftui/timelineview/init(_:content:)
timestamp: 2025-10-29T00:09:15.921Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [timelineview](/documentation/swiftui/timelineview)

**Initializer**

# init(_:content:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Creates a new timeline view that uses the given schedule.

```swift
nonisolated init(_ schedule: Schedule, @ViewBuilder content: @escaping (TimelineViewDefaultContext) -> Content)
```

## Parameters

**schedule**

A schedule that produces a sequence of dates that indicate the instances when the view should update. Use a type that conforms to [Timeline Schedule](/documentation/swiftui/timelineschedule), like [every Minute](/documentation/swiftui/timelineschedule/everyminute), or a custom timeline schedule that you define.



**content**

A closure that generates view content at the moments indicated by the schedule. The closure takes an input of type [Timeline View Default Context](/documentation/swiftui/timelineviewdefaultcontext) that includes the date from the schedule that prompted the update, as well as a [Cadence-swift.enum](/documentation/swiftui/timelineview/context/cadence-swift.enum) value that the view can use to customize its appearance.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
