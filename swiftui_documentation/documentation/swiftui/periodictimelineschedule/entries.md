---
title: PeriodicTimelineSchedule.Entries
description: The sequence of dates in periodic schedule.
source: https://developer.apple.com/documentation/swiftui/periodictimelineschedule/entries
timestamp: 2025-10-29T00:14:35.874Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [periodictimelineschedule](/documentation/swiftui/periodictimelineschedule)

**Structure**

# PeriodicTimelineSchedule.Entries

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The sequence of dates in periodic schedule.

```swift
struct Entries
```

## Overview

The [entries(from:mode:)](/documentation/swiftui/periodictimelineschedule/entries(from:mode:)) method returns a value of this type, which is a [Sequence](/documentation/Swift/Sequence) of periodic dates in ascending order. A [Timeline View](/documentation/swiftui/timelineview) that you create updates its content at the moments in time corresponding to the dates included in the sequence.

## Conforms To

- [IteratorProtocol](/documentation/Swift/IteratorProtocol)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [Sequence](/documentation/Swift/Sequence)

## Getting the sequence of dates

- [entries(from:mode:)](/documentation/swiftui/periodictimelineschedule/entries(from:mode:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
