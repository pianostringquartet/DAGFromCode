---
title: accessibilityReduceMotion
description: Whether the system preference for Reduce Motion is enabled.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/accessibilityreducemotion
timestamp: 2025-10-29T00:09:31.547Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# accessibilityReduceMotion

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Whether the system preference for Reduce Motion is enabled.

```swift
var accessibilityReduceMotion: Bool { get }
```

## Discussion

If this property’s value is true, UI should avoid large animations, especially those that simulate the third dimension.

## Minimizing motion

- [accessibilityDimFlashingLights](/documentation/swiftui/environmentvalues/accessibilitydimflashinglights)
- [accessibilityPlayAnimatedImages](/documentation/swiftui/environmentvalues/accessibilityplayanimatedimages)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
