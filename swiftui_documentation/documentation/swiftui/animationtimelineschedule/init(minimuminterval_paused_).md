---
title: init(minimumInterval:paused:)
description: Create a pausable schedule of dates updating at a frequency no more quickly than the provided interval.
source: https://developer.apple.com/documentation/swiftui/animationtimelineschedule/init(minimuminterval:paused:)
timestamp: 2025-10-29T00:13:10.741Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animationtimelineschedule](/documentation/swiftui/animationtimelineschedule)

**Initializer**

# init(minimumInterval:paused:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Create a pausable schedule of dates updating at a frequency no more quickly than the provided interval.

```swift
init(minimumInterval: Double? = nil, paused: Bool = false)
```

## Parameters

**minimumInterval**

The minimum interval to update the schedule at. Pass nil to let the system pick an appropriate update interval.



**paused**

If the schedule should stop generating updates.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
