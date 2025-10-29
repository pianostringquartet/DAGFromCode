---
title: accessibilityShowBorders
description: Whether the system preference for Show Borders is enabled. On macOS this is true when Increased Contrast is enabled.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/accessibilityshowborders
timestamp: 2025-10-29T00:13:25.131Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# accessibilityShowBorders

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Whether the system preference for Show Borders is enabled. On macOS this is true when Increased Contrast is enabled.

```swift
@backDeployed(before: iOS 26.1, macOS 26.1, tvOS 26.1, watchOS 26.1, visionOS 26.1)
var accessibilityShowBorders: Bool { get }
```

## Discussion

If this property’s value is true, interactive custom controls such as buttons should be drawn in such a way that their edges and borders are clearly visible.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
