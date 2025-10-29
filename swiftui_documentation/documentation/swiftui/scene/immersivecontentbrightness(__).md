---
title: immersiveContentBrightness(_:)
description: Sets the content brightness of an immersive space.
source: https://developer.apple.com/documentation/swiftui/scene/immersivecontentbrightness(_:)
timestamp: 2025-10-29T00:15:23.768Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# immersiveContentBrightness(_:)

**Available on:** visionOS 1.0+

> Sets the content brightness of an immersive space.

```swift
nonisolated func immersiveContentBrightness(_ brightness: ImmersiveContentBrightness) -> some Scene
```

## Parameters

**brightness**

The level of content brightness that you prefer.



## Return Value

A scene that has the specified content brightness.

## Discussion

Pass one of the standard brightness levels defined in [Immersive Content Brightness](/documentation/swiftui/immersivecontentbrightness) or a custom one that you create with the [custom(_:)](/documentation/swiftui/immersivecontentbrightness/custom(_:)) method to this scene modifier to set a preference for the content brightness in an [Immersive Space](/documentation/swiftui/immersivespace). The system takes the value that you set into account, but might not be able to honor a specific preference.

When you do this to create an environment that’s suitable for video playback, the standard brightness values provide good results for most use cases. To optimize further, you can create a custom brightness using a normalized value that expresses the linear brightness ratio between a standard dynamic range white video frame and the background that surrounds the player window.

> [!IMPORTANT]
> This modifier doesn’t affect scenes other than immersive spaces.

## Adjusting content brightness

- [ImmersiveContentBrightness](/documentation/swiftui/immersivecontentbrightness)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
