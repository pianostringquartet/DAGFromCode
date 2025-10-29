---
title: TimelineView.Context.Cadence
description: A rate at which timeline views can receive updates.
source: https://developer.apple.com/documentation/swiftui/timelineview/context/cadence-swift.enum
timestamp: 2025-10-29T00:12:42.883Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [timelineview](/documentation/swiftui/timelineview) › [context](/documentation/swiftui/timelineview/context)

**Enumeration**

# TimelineView.Context.Cadence

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A rate at which timeline views can receive updates.

```swift
enum Cadence
```

## Overview

Use the cadence presented to content in a [Timeline View](/documentation/swiftui/timelineview) to hide information that updates faster than the view’s current update rate. For example, you could hide the millisecond component of a digital timer when the cadence is [seconds](/documentation/swiftui/timelineview/context/cadence-swift.enum/seconds) or [minutes](/documentation/swiftui/timelineview/context/cadence-swift.enum/minutes).

Because this enumeration conforms to the [Comparable](/documentation/Swift/Comparable) protocol, you can compare cadences with relational operators. Slower cadences have higher values, so you could perform the check described above with the following comparison:

```swift
let hideMilliseconds = cadence > .live
```

## Conforms To

- [Comparable](/documentation/Swift/Comparable)
- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting cadences

- [TimelineView.Context.Cadence.live](/documentation/swiftui/timelineview/context/cadence-swift.enum/live) Updates the view continuously.
- [TimelineView.Context.Cadence.seconds](/documentation/swiftui/timelineview/context/cadence-swift.enum/seconds) Updates the view approximately once per second.
- [TimelineView.Context.Cadence.minutes](/documentation/swiftui/timelineview/context/cadence-swift.enum/minutes) Updates the view approximately once per minute.

## Getting the cadence

- [cadence](/documentation/swiftui/timelineview/context/cadence-swift.property)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
