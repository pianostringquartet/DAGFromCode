---
title: TimelineView.Context
description: Information passed to a timeline view’s content callback.
source: https://developer.apple.com/documentation/swiftui/timelineview/context
timestamp: 2025-10-29T00:09:21.880Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [timelineview](/documentation/swiftui/timelineview)

**Structure**

# TimelineView.Context

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Information passed to a timeline view’s content callback.

```swift
struct Context
```

## Overview

The context includes both the [date](/documentation/swiftui/timelineview/context/date) from the schedule that triggered the callback, and a [cadence-swift.property](/documentation/swiftui/timelineview/context/cadence-swift.property) that you can use to customize the appearance of your view. For example, you might choose to display the second hand of an analog clock only when the cadence is [seconds](/documentation/swiftui/timelineview/context/cadence-swift.enum/seconds) or faster.

## Getting the date

- [date](/documentation/swiftui/timelineview/context/date) The date from the schedule that triggered the current view update.

## Getting the cadence

- [cadence](/documentation/swiftui/timelineview/context/cadence-swift.property) The rate at which the timeline updates the view.
- [TimelineView.Context.Cadence](/documentation/swiftui/timelineview/context/cadence-swift.enum) A rate at which timeline views can receive updates.

## Invalidating the context

- [invalidateTimelineContent()](/documentation/swiftui/timelineview/context/invalidatetimelinecontent()) Resets any pre-rendered views the system has from the timeline.

## Creating a timeline

- [init(_:content:)](/documentation/swiftui/timelineview/init(_:content:)-1mlmj)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
