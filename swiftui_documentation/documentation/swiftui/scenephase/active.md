---
title: ScenePhase.active
description: The scene is in the foreground and interactive.
source: https://developer.apple.com/documentation/swiftui/scenephase/active
timestamp: 2025-10-29T00:11:07.968Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scenephase](/documentation/swiftui/scenephase)

**Case**

# ScenePhase.active

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> The scene is in the foreground and interactive.

```swift
case active
```

## Discussion

An active scene isn’t necessarily front-most. For example, a macOS window might be active even if it doesn’t currently have focus. Nevertheless, all scenes should operate normally in this phase.

An app or custom scene in this phase contains at least one active scene instance.

## Getting scene phases

- [ScenePhase.inactive](/documentation/swiftui/scenephase/inactive)
- [ScenePhase.background](/documentation/swiftui/scenephase/background)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
