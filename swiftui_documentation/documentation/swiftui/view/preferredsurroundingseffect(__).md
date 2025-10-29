---
title: preferredSurroundingsEffect(_:)
description: Applies an effect to passthrough video.
source: https://developer.apple.com/documentation/swiftui/view/preferredsurroundingseffect(_:)
timestamp: 2025-10-29T00:10:14.139Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# preferredSurroundingsEffect(_:)

**Available on:** visionOS 1.0+

> Applies an effect to passthrough video.

```swift
nonisolated func preferredSurroundingsEffect(_ effect: SurroundingsEffect?) -> some View
```

## Parameters

**effect**

The effect that you want to apply.



## Return Value

A view that exhibits the specified preference.

## Discussion

Use this modifier to indicate a preference for the appearance of passthrough video when displaying the modified view. For example, you can enhance the immersiveness of a scene that uses the default [mixed](/documentation/swiftui/immersionstyle/mixed) immersion style by applying the [system Dark](/documentation/swiftui/surroundingseffect/systemdark) preference to a view inside the scene:

```swift
ImmersiveSpace(id: "orbit") {
    Orbit()
        .preferredSurroundingsEffect(.dark)
}
```

When the system presents the `Orbit` view in the above code, it also dims passthrough video. This helps to draw attention to the scene’s virtual content while still enabling people to remain aware of their surroundings.

> [!NOTE]
> This modifier expresses a preference, but the system might not be able to honor it.

Use a value of `nil` to indicate that you have no preference. You typically do this to counteract a preference expressed by a view lower in the view hierarchy.

## Configuring passthrough

- [SurroundingsEffect](/documentation/swiftui/surroundingseffect)
- [BreakthroughEffect](/documentation/swiftui/breakthrougheffect)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
