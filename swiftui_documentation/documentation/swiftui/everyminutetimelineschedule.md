---
title: EveryMinuteTimelineSchedule
description: A schedule for updating a timeline view at the start of every minute.
source: https://developer.apple.com/documentation/swiftui/everyminutetimelineschedule
timestamp: 2025-10-29T00:14:55.021Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# EveryMinuteTimelineSchedule

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A schedule for updating a timeline view at the start of every minute.

```swift
struct EveryMinuteTimelineSchedule
```

## Overview

You can also use [every Minute](/documentation/swiftui/timelineschedule/everyminute) to construct this schedule.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [TimelineSchedule](/documentation/swiftui/timelineschedule)

## Creating a schedule

- [init()](/documentation/swiftui/everyminutetimelineschedule/init()) Creates a per-minute update schedule.

## Getting the sequence of dates

- [entries(from:mode:)](/documentation/swiftui/everyminutetimelineschedule/entries(from:mode:)) Provides a sequence of per-minute dates starting from a given date.
- [EveryMinuteTimelineSchedule.Entries](/documentation/swiftui/everyminutetimelineschedule/entries) The sequence of dates in an every minute schedule.

## Supporting types

- [AnimationTimelineSchedule](/documentation/swiftui/animationtimelineschedule)
- [ExplicitTimelineSchedule](/documentation/swiftui/explicittimelineschedule)
- [PeriodicTimelineSchedule](/documentation/swiftui/periodictimelineschedule)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
