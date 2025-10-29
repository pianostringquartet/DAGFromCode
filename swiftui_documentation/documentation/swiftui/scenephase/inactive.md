---
title: ScenePhase.inactive
description: The scene is in the foreground but should pause its work.
source: https://developer.apple.com/documentation/swiftui/scenephase/inactive
timestamp: 2025-10-29T00:13:24.138Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scenephase](/documentation/swiftui/scenephase)

**Case**

# ScenePhase.inactive

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> The scene is in the foreground but should pause its work.

```swift
case inactive
```

## Discussion

A scene in this phase doesn’t receive events and should pause timers and free any unnecessary resources. The scene might be completely hidden in the user interface or otherwise unavailable to the user. In macOS, scenes only pass through this phase temporarily on their way to the [background](/documentation/swiftui/scenephase/background) phase.

An app or custom scene in this phase contains no scene instances in the [active](/documentation/swiftui/scenephase/active) phase.

## Getting scene phases

- [ScenePhase.active](/documentation/swiftui/scenephase/active)
- [ScenePhase.background](/documentation/swiftui/scenephase/background)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
