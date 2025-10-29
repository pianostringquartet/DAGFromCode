---
title: cadence
description: The rate at which the timeline updates the view.
source: https://developer.apple.com/documentation/swiftui/timelineview/context/cadence-swift.property
timestamp: 2025-10-29T00:09:17.645Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [timelineview](/documentation/swiftui/timelineview) › [context](/documentation/swiftui/timelineview/context)

**Instance Property**

# cadence

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The rate at which the timeline updates the view.

```swift
let cadence: TimelineView<Schedule, Content>.Context.Cadence
```

## Discussion

Use this value to hide information that updates faster than the view’s current update rate. For example, you could hide the millisecond component of a digital timer when the cadence is anything slower than [live](/documentation/swiftui/timelineview/context/cadence-swift.enum/live).

Because the [Cadence-swift.enum](/documentation/swiftui/timelineview/context/cadence-swift.enum) enumeration conforms to the [Comparable](/documentation/Swift/Comparable) protocol, you can compare cadences with relational operators. Slower cadences have higher values, so you could perform the check described above with the following comparison:

```swift
let hideMilliseconds = cadence > .live
```

## Getting the cadence

- [TimelineView.Context.Cadence](/documentation/swiftui/timelineview/context/cadence-swift.enum)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
