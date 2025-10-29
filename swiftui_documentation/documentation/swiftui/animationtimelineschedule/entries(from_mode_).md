---
title: entries(from:mode:)
description: Returns entries at the frequency of the animation schedule.
source: https://developer.apple.com/documentation/swiftui/animationtimelineschedule/entries(from:mode:)
timestamp: 2025-10-29T00:09:21.032Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animationtimelineschedule](/documentation/swiftui/animationtimelineschedule)

**Instance Method**

# entries(from:mode:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Returns entries at the frequency of the animation schedule.

```swift
func entries(from start: Date, mode: TimelineScheduleMode) -> AnimationTimelineSchedule.Entries
```

## Discussion

When in `.lowFrequency` mode, return no entries, effectively pausing the animation.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
