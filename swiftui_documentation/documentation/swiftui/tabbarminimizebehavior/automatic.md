---
title: automatic
description: Determine the behavior automatically based on the surrounding context.
source: https://developer.apple.com/documentation/swiftui/tabbarminimizebehavior/automatic
timestamp: 2025-10-29T00:09:49.307Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tabbarminimizebehavior](/documentation/swiftui/tabbarminimizebehavior)

**Type Property**

# automatic

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Determine the behavior automatically based on the surrounding context.

```swift
static let automatic: TabBarMinimizeBehavior
```

## Discussion

The depends on the platform:

- On iOS, iPadOS, tvOS, and watchOS, the tab bar does not minimize.
- On visionOS, the tab bar minimizes when people look away from it.
- On macOS, the tab bar minimizes when the window has reduced space.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
