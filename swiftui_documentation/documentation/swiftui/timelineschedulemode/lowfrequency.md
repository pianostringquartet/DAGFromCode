---
title: TimelineScheduleMode.lowFrequency
description: A mode that produces schedule updates at a reduced rate.
source: https://developer.apple.com/documentation/swiftui/timelineschedulemode/lowfrequency
timestamp: 2025-10-29T00:13:17.326Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [timelineschedulemode](/documentation/swiftui/timelineschedulemode)

**Case**

# TimelineScheduleMode.lowFrequency

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A mode that produces schedule updates at a reduced rate.

```swift
case lowFrequency
```

## Discussion

In this mode, the schedule should generate only “major” updates, if possible. For example, a timeline providing updates to a timer might restrict updates to once a minute while in this mode.

## Getting timeline schedule modes

- [TimelineScheduleMode.normal](/documentation/swiftui/timelineschedulemode/normal)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
