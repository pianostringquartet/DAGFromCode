---
title: isActivityUpdateReduced
description: A Boolean value that indicates whether the Live Activity update synchronization rate is reduced.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/isactivityupdatereduced
timestamp: 2025-10-29T00:10:10.312Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# isActivityUpdateReduced

**Available on:** iOS 18.0+, iPadOS 18.0+

> A Boolean value that indicates whether the Live Activity update synchronization rate is reduced.

```swift
var isActivityUpdateReduced: Bool { get set }
```

## Discussion

When rendering an activity on a remote device such as Apple Watch, content updates may sometimes be limited to only alerting updates, depending on system conditions. When a Live Activity is visible and the system synchronizes only alerting updates with a remote device, the value of `isActivityUpdateReduced` is `true`.

For example, `isActivityUpdateReduced` may be `true` for Live Activities on an Apple Watch that’s out of range of the paired iPhone.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
