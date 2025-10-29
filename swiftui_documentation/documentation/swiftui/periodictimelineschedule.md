---
title: PeriodicTimelineSchedule
description: A schedule for updating a timeline view at regular intervals.
source: https://developer.apple.com/documentation/swiftui/periodictimelineschedule
timestamp: 2025-10-29T00:10:11.440Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# PeriodicTimelineSchedule

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A schedule for updating a timeline view at regular intervals.

```swift
struct PeriodicTimelineSchedule
```

## Overview

You can also use [periodic(from:by:)](/documentation/swiftui/timelineschedule/periodic(from:by:)) to construct this schedule.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [TimelineSchedule](/documentation/swiftui/timelineschedule)

## Creating a schedule

- [init(from:by:)](/documentation/swiftui/periodictimelineschedule/init(from:by:)) Creates a periodic update schedule.

## Getting the sequence of dates

- [entries(from:mode:)](/documentation/swiftui/periodictimelineschedule/entries(from:mode:)) Provides a sequence of periodic dates starting from around a given date.
- [PeriodicTimelineSchedule.Entries](/documentation/swiftui/periodictimelineschedule/entries) The sequence of dates in periodic schedule.

## Supporting types

- [AnimationTimelineSchedule](/documentation/swiftui/animationtimelineschedule)
- [EveryMinuteTimelineSchedule](/documentation/swiftui/everyminutetimelineschedule)
- [ExplicitTimelineSchedule](/documentation/swiftui/explicittimelineschedule)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
