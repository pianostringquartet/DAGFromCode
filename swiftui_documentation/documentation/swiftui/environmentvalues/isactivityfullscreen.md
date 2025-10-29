---
title: isActivityFullscreen
description: A Boolean value that indicates whether the Live Activity appears in a full-screen presentation.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/isactivityfullscreen
timestamp: 2025-10-29T00:10:57.932Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# isActivityFullscreen

**Available on:** iOS 16.1+, iPadOS 16.1+

> A Boolean value that indicates whether the Live Activity appears in a full-screen presentation.

```swift
@backDeployed(before: iOS 17.0)
var isActivityFullscreen: Bool { get }
```

## Discussion

When a Live Activity fills the entire screen, the system extends the background tint color you set with the [activityBackgroundTint(_:)](/documentation/SwiftUI/View/activityBackgroundTint(_:)) modifier to fill the screen.

Note that this environment variable is always `false` in iOS 16.

## Configuring a Live Activity

- [activitySystemActionForegroundColor(_:)](/documentation/swiftui/view/activitysystemactionforegroundcolor(_:))
- [activityBackgroundTint(_:)](/documentation/swiftui/view/activitybackgroundtint(_:))
- [activityFamily](/documentation/swiftui/environmentvalues/activityfamily)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
