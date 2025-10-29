---
title: TimelineScheduleMode
description: A mode of operation for timeline schedule updates.
source: https://developer.apple.com/documentation/swiftui/timelineschedulemode
timestamp: 2025-10-29T00:13:24.310Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Enumeration**

# TimelineScheduleMode

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A mode of operation for timeline schedule updates.

```swift
enum TimelineScheduleMode
```

## Overview

A [Timeline View](/documentation/swiftui/timelineview) provides a mode when calling its schedule’s [entries(from:mode:)](/documentation/swiftui/timelineschedule/entries(from:mode:)) method. The view chooses a mode based on the state of the system. For example, a watchOS view might request a lower frequency of updates, using the [low Frequency](/documentation/swiftui/timelineschedulemode/lowfrequency) mode, when the user lowers their wrist.

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting timeline schedule modes

- [TimelineScheduleMode.normal](/documentation/swiftui/timelineschedulemode/normal) A mode that produces schedule updates at the schedule’s natural cadence.
- [TimelineScheduleMode.lowFrequency](/documentation/swiftui/timelineschedulemode/lowfrequency) A mode that produces schedule updates at a reduced rate.

## Specifying a mode

- [TimelineSchedule.Mode](/documentation/swiftui/timelineschedule/mode)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
