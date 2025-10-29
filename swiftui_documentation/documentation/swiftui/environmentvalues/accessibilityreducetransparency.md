---
title: accessibilityReduceTransparency
description: Whether the system preference for Reduce Transparency is enabled.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/accessibilityreducetransparency
timestamp: 2025-10-29T00:09:16.791Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# accessibilityReduceTransparency

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Whether the system preference for Reduce Transparency is enabled.

```swift
var accessibilityReduceTransparency: Bool { get }
```

## Discussion

If this property’s value is true, UI (mainly window) backgrounds should not be semi-transparent; they should be opaque.

## Improving legibility

- [accessibilityShowButtonShapes](/documentation/swiftui/environmentvalues/accessibilityshowbuttonshapes)
- [legibilityWeight](/documentation/swiftui/environmentvalues/legibilityweight)
- [LegibilityWeight](/documentation/swiftui/legibilityweight)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
