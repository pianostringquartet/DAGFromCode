---
title: EveryMinuteTimelineSchedule.Entries
description: The sequence of dates in an every minute schedule.
source: https://developer.apple.com/documentation/swiftui/everyminutetimelineschedule/entries
timestamp: 2025-10-29T00:14:19.966Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [everyminutetimelineschedule](/documentation/swiftui/everyminutetimelineschedule)

**Structure**

# EveryMinuteTimelineSchedule.Entries

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The sequence of dates in an every minute schedule.

```swift
struct Entries
```

## Overview

The [entries(from:mode:)](/documentation/swiftui/everyminutetimelineschedule/entries(from:mode:)) method returns a value of this type, which is a [Sequence](/documentation/Swift/Sequence) of dates, one per minute, in ascending order. A [Timeline View](/documentation/swiftui/timelineview) that you create updates its content at the moments in time corresponding to the dates included in the sequence.

## Conforms To

- [IteratorProtocol](/documentation/Swift/IteratorProtocol)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [Sequence](/documentation/Swift/Sequence)

## Getting the sequence of dates

- [entries(from:mode:)](/documentation/swiftui/everyminutetimelineschedule/entries(from:mode:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
