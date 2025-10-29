---
title: ExplicitTimelineSchedule
description: A schedule for updating a timeline view at explicit points in time.
source: https://developer.apple.com/documentation/swiftui/explicittimelineschedule
timestamp: 2025-10-29T00:10:42.592Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ExplicitTimelineSchedule

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A schedule for updating a timeline view at explicit points in time.

```swift
struct ExplicitTimelineSchedule<Entries> where Entries : Sequence, Entries.Element == Date
```

## Overview

You can also use [explicit(_:)](/documentation/swiftui/timelineschedule/explicit(_:)) to construct this schedule.

## Conforms To

- [TimelineSchedule](/documentation/swiftui/timelineschedule)

## Creating a schedule

- [init(_:)](/documentation/swiftui/explicittimelineschedule/init(_:)) Creates a schedule composed of an explicit sequence of dates.

## Getting the sequence of dates

- [entries(from:mode:)](/documentation/swiftui/explicittimelineschedule/entries(from:mode:)) Provides the sequence of dates with which you initialized the schedule.

## Supporting types

- [AnimationTimelineSchedule](/documentation/swiftui/animationtimelineschedule)
- [EveryMinuteTimelineSchedule](/documentation/swiftui/everyminutetimelineschedule)
- [PeriodicTimelineSchedule](/documentation/swiftui/periodictimelineschedule)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
