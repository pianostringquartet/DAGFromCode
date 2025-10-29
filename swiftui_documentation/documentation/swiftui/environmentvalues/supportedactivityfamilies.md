---
title: supportedActivityFamilies
description: An environment value that that indicates potential rendered family for a Live Activity.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/supportedactivityfamilies
timestamp: 2025-10-29T00:09:35.614Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# supportedActivityFamilies

**Available on:** iOS 18.0+, iPadOS 18.0+

> An environment value that that indicates potential rendered family for a Live Activity.

```swift
var supportedActivityFamilies: Set<ActivityFamily> { get set }
```

## Discussion

To detect the currently rendered activity family size, use the [activity Family](/documentation/SwiftUI/EnvironmentValues/activityFamily) environment variable. The `supportedActivityFamilies` environment value might only be useful if your make you make your Live Activity views available in a Swift package.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
