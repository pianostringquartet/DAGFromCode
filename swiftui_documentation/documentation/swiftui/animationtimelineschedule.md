---
title: AnimationTimelineSchedule
description: A pausable schedule of dates updating at a frequency no more quickly than the provided interval.
source: https://developer.apple.com/documentation/swiftui/animationtimelineschedule
timestamp: 2025-10-29T00:09:09.710Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# AnimationTimelineSchedule

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A pausable schedule of dates updating at a frequency no more quickly than the provided interval.

```swift
struct AnimationTimelineSchedule
```

## Overview

You can also use [animation(minimumInterval:paused:)](/documentation/swiftui/timelineschedule/animation(minimuminterval:paused:)) to construct this schedule.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [TimelineSchedule](/documentation/swiftui/timelineschedule)

## Creating a schedule

- [init(minimumInterval:paused:)](/documentation/swiftui/animationtimelineschedule/init(minimuminterval:paused:)) Create a pausable schedule of dates updating at a frequency no more quickly than the provided interval.

## Getting the sequence of dates

- [entries(from:mode:)](/documentation/swiftui/animationtimelineschedule/entries(from:mode:)) Returns entries at the frequency of the animation schedule.

## Supporting types

- [EveryMinuteTimelineSchedule](/documentation/swiftui/everyminutetimelineschedule)
- [ExplicitTimelineSchedule](/documentation/swiftui/explicittimelineschedule)
- [PeriodicTimelineSchedule](/documentation/swiftui/periodictimelineschedule)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
