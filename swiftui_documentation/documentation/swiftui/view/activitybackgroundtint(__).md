---
title: activityBackgroundTint(_:)
description: Sets the tint color for the background of a Live Activity that appears on the Lock Screen.
source: https://developer.apple.com/documentation/swiftui/view/activitybackgroundtint(_:)
timestamp: 2025-10-29T00:11:09.265Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# activityBackgroundTint(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+

> Sets the tint color for the background of a Live Activity that appears on the Lock Screen.

```swift
@MainActor @preconcurrency func activityBackgroundTint(_ color: Color?) -> some View
```

## Parameters

**color**

The background tint color to apply. To use the system’s default background material, pass `nil`.



## Discussion

When you set a custom background tint color, consider setting a custom text color for the auxiliary button people use to end a Live Activity on the Lock Screen. To set a custom text color, use the [activitySystemActionForegroundColor(_:)](/documentation/SwiftUI/View/activitySystemActionForegroundColor(_:)) view modifier.

## Configuring a Live Activity

- [activitySystemActionForegroundColor(_:)](/documentation/swiftui/view/activitysystemactionforegroundcolor(_:))
- [isActivityFullscreen](/documentation/swiftui/environmentvalues/isactivityfullscreen)
- [activityFamily](/documentation/swiftui/environmentvalues/activityfamily)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
