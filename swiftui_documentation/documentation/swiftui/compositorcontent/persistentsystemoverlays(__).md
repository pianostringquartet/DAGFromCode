---
title: persistentSystemOverlays(_:)
description: Sets the preferred visibility of the non-transient system views overlaying the app.
source: https://developer.apple.com/documentation/swiftui/compositorcontent/persistentsystemoverlays(_:)
timestamp: 2025-10-29T00:13:53.221Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [compositorcontent](/documentation/swiftui/compositorcontent)

**Instance Method**

# persistentSystemOverlays(_:)

**Available on:** macOS 26.0+, visionOS 26.0+

> Sets the preferred visibility of the non-transient system views overlaying the app.

```swift
nonisolated func persistentSystemOverlays(_ visibility: Visibility) -> some CompositorContent
```

## Parameters

**visibility**

A value that indicates the visibility of the non-transient system views overlaying the app.



## Discussion

Use this modifier to influence the appearance of system overlays in your app. The behavior varies by platform. For an [Immersive Space](/documentation/swiftui/immersivespace), it affects the Home indicator.

> [!NOTE]
> You can indicate a preference with this modifier, but the system might or might not be able to honor that preference.

Affected non-transient system views can include, but are not limited to:

- The Home indicator.
- The SharePlay indicator.
- The Multitasking Controls button and Picture in Picture on iPad.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
