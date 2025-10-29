---
title: ImmersiveContentBrightness
description: The content brightness of an immersive space.
source: https://developer.apple.com/documentation/swiftui/immersivecontentbrightness
timestamp: 2025-10-29T00:11:36.717Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ImmersiveContentBrightness

**Available on:** visionOS 1.0+

> The content brightness of an immersive space.

```swift
struct ImmersiveContentBrightness
```

## Overview

Use a value of this type as an input to the [immersiveContentBrightness(_:)](/documentation/swiftui/scene/immersivecontentbrightness(_:)) scene modifier to indicate the ambient content brightness of an [Immersive Space](/documentation/swiftui/immersivespace).

When you do this to create an environment that’s suitable for video playback, use one of the standard brightness values like [bright](/documentation/swiftui/immersivecontentbrightness/bright), [dim](/documentation/swiftui/immersivecontentbrightness/dim), or [dark](/documentation/swiftui/immersivecontentbrightness/dark) to provide good results for most use cases. To optimize further, you can create a custom brightness using a normalized value that expresses the linear brightness ratio between a standard dynamic range white video frame and the background that surrounds the player window.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)

## Type Properties

- [automatic](/documentation/swiftui/immersivecontentbrightness/automatic) The default content brightness.
- [bright](/documentation/swiftui/immersivecontentbrightness/bright) A bright content brightness.
- [dark](/documentation/swiftui/immersivecontentbrightness/dark) A dark content brightness.
- [dim](/documentation/swiftui/immersivecontentbrightness/dim) A dimmed content brightness.

## Type Methods

- [custom(_:)](/documentation/swiftui/immersivecontentbrightness/custom(_:)) Creates a content brightness with a custom value.

## Adjusting content brightness

- [immersiveContentBrightness(_:)](/documentation/swiftui/scene/immersivecontentbrightness(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
