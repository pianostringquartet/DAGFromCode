---
title: ScenePhase.background
description: The scene isn’t currently visible in the UI.
source: https://developer.apple.com/documentation/swiftui/scenephase/background
timestamp: 2025-10-29T00:10:35.268Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scenephase](/documentation/swiftui/scenephase)

**Case**

# ScenePhase.background

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> The scene isn’t currently visible in the UI.

```swift
case background
```

## Discussion

Do as little as possible in a scene that’s in the `background` phase. The `background` phase can precede termination, so do any cleanup work immediately upon entering this state. For example, close any open files and network connections. However, a scene can also return to the [active](/documentation/swiftui/scenephase/active) phase from the background.

Expect an app that enters the `background` phase to terminate.

## Getting scene phases

- [ScenePhase.active](/documentation/swiftui/scenephase/active)
- [ScenePhase.inactive](/documentation/swiftui/scenephase/inactive)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
