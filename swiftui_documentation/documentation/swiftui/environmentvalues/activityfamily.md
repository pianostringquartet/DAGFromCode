---
title: activityFamily
description: The size family of the current Live Activity.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/activityfamily
timestamp: 2025-10-29T00:12:34.304Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# activityFamily

**Available on:** iOS 18.0+, iPadOS 18.0+

> The size family of the current Live Activity.

```swift
var activityFamily: ActivityFamily { get set }
```

## Discussion

A Live Activity you initiate on one device can also appear on a remote device that renders the Live Activity in a different family size. As a result, it renders for a specific family, depending on both the device and the location in which it appears. For example, when rendering on the iOS or iPadOS Lock Screen, the current family is doc://com.apple.comdumentation/documentation/WidgetKit/ActivityFamily/medium.

Use [supplementalActivityFamilies(_:)](/documentation/SwiftUI/WidgetConfiguration/supplementalActivityFamilies(_:)) to opt in and allow your Live Activity to render with additional families.

## Configuring a Live Activity

- [activitySystemActionForegroundColor(_:)](/documentation/swiftui/view/activitysystemactionforegroundcolor(_:))
- [activityBackgroundTint(_:)](/documentation/swiftui/view/activitybackgroundtint(_:))
- [isActivityFullscreen](/documentation/swiftui/environmentvalues/isactivityfullscreen)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
