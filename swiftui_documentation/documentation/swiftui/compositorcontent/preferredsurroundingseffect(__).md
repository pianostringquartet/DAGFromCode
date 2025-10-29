---
title: preferredSurroundingsEffect(_:)
description: Applies an effect to passthrough video.
source: https://developer.apple.com/documentation/swiftui/compositorcontent/preferredsurroundingseffect(_:)
timestamp: 2025-10-29T00:14:27.327Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [compositorcontent](/documentation/swiftui/compositorcontent)

**Instance Method**

# preferredSurroundingsEffect(_:)

**Available on:** macOS 26.0+, visionOS 26.0+

> Applies an effect to passthrough video.

```swift
nonisolated func preferredSurroundingsEffect(_ effect: SurroundingsEffect?) -> some CompositorContent
```

## Parameters

**effect**

The effect that you want to apply.



## Return Value

A CompositorContent that exhibits the specified preference.

## Discussion

Use this modifier to indicate a preference for the appearance of passthrough video when displaying the modified compositor content. For example, you can enhance the immersiveness of a scene that uses the default [mixed](/documentation/swiftui/immersionstyle/mixed) immersion style by applying the [system Dark](/documentation/swiftui/surroundingseffect/systemdark) preference to a compositor content inside the scene.

This also dims passthrough video, which helps to draw attention to the scene’s virtual content while still enabling people to remain aware of their surroundings.

> [!NOTE]
> This modifier expresses a preference, but the system might not be able to honor it.

Use a value of `nil` to indicate that you have no preference. You typically do this to counteract a preference expressed by something lower in the view hierarchy.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
