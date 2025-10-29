---
title: Entries
description: The sequence of dates within a schedule.
source: https://developer.apple.com/documentation/swiftui/timelineschedule/entries
timestamp: 2025-10-29T00:15:13.363Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [timelineschedule](/documentation/swiftui/timelineschedule)

**Associated Type**

# Entries

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The sequence of dates within a schedule.

```swift
associatedtype Entries : Sequence where Self.Entries.Element == Date
```

## Discussion

The [entries(from:mode:)](/documentation/swiftui/timelineschedule/entries(from:mode:)) method returns a value of this type, which is a [Sequence](/documentation/Swift/Sequence) of dates in ascending order. A [Timeline View](/documentation/swiftui/timelineview) that you create with a schedule updates its content at the moments in time corresponding to the dates included in the sequence.

## Getting a sequence of dates

- [entries(from:mode:)](/documentation/swiftui/timelineschedule/entries(from:mode:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
