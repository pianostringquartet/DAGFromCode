---
title: persistentSystemOverlays(_:)
description: Sets the preferred visibility of the non-transient system views overlaying the app.
source: https://developer.apple.com/documentation/swiftui/view/persistentsystemoverlays(_:)
timestamp: 2025-10-29T00:15:18.154Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# persistentSystemOverlays(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Sets the preferred visibility of the non-transient system views overlaying the app.

```swift
nonisolated func persistentSystemOverlays(_ visibility: Visibility) -> some View
```

## Parameters

**visibility**

A value that indicates the visibility of the non-transient system views overlaying the app.



## Discussion

Use this modifier to influence the appearance of system overlays in your app. The behavior varies by platform.

In iOS, the following example hides every persistent system overlay. In visionOS 2 and later, the SharePlay Indicator hides if the scene is shared through SharePlay, or not shared at all. During screen sharing, the indicator always remains visible. The Home indicator doesn’t appear without specific user intent when you set visibility to `hidden`. For a [Window Group](/documentation/swiftui/windowgroup), the modifier affects the visibility of the window chrome. For an [Immersive Space](/documentation/swiftui/immersivespace), it affects the Home indicator.

```swift
struct ImmersiveView: View {
    var body: some View {
        Text("Maximum immersion")
            .persistentSystemOverlays(.hidden)
    }
}
```

> [!NOTE]
> You can indicate a preference with this modifier, but the system might or might not be able to honor that preference.

Affected non-transient system views can include, but are not limited to:

- The Home indicator.
- The SharePlay indicator.
- The Multitasking Controls button and Picture in Picture on iPad.

## Hiding system elements

- [labelsHidden()](/documentation/swiftui/view/labelshidden())
- [labelsVisibility(_:)](/documentation/swiftui/view/labelsvisibility(_:))
- [labelsVisibility](/documentation/swiftui/environmentvalues/labelsvisibility)
- [menuIndicator(_:)](/documentation/swiftui/view/menuindicator(_:))
- [statusBarHidden(_:)](/documentation/swiftui/view/statusbarhidden(_:))
- [Visibility](/documentation/swiftui/visibility)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
