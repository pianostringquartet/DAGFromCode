---
title: onWorldRecenter(action:)
description: Adds an action to perform when recentering the view with the digital crown.
source: https://developer.apple.com/documentation/swiftui/compositorcontent/onworldrecenter(action:)
timestamp: 2025-10-29T00:12:57.783Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [compositorcontent](/documentation/swiftui/compositorcontent)

**Instance Method**

# onWorldRecenter(action:)

**Available on:** macOS 26.0+, visionOS 26.0+

> Adds an action to perform when recentering the view with the digital crown.

```swift
nonisolated func onWorldRecenter(action: @escaping @MainActor () -> Void) -> some CompositorContent
```

## Parameters

**action**

A closure to run when the content is recentered. This will run when the app has been recentered and is about to fade back in, equivalent to `WorldRecenterPhase.ended`.



## Discussion

When the user recenters their content, the app will fade out and then be repositioned. Once it has been repositioned, the action will be called and the app will fade back in. The action will be called if the app is not backgrounded or suspended.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
