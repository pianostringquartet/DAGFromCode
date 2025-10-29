---
title: invalidateTimelineContent()
description: Resets any pre-rendered views the system has from the timeline.
source: https://developer.apple.com/documentation/swiftui/timelineview/context/invalidatetimelinecontent()
timestamp: 2025-10-29T00:09:56.103Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [timelineview](/documentation/swiftui/timelineview) › [context](/documentation/swiftui/timelineview/context)

**Instance Method**

# invalidateTimelineContent()

**Available on:** iOS 16.0+, iPadOS 16.0+, watchOS 8.0+

> Resets any pre-rendered views the system has from the timeline.

```swift
func invalidateTimelineContent()
```

## Discussion

When entering Always On Display, the system might pre-render frames. If the content of these frames must change in a way that isn’t reflected by the schedule or the timeline view’s current bindings — for example, because the user changes the title of a future calendar event — call this method to request that the frames be regenerated.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
