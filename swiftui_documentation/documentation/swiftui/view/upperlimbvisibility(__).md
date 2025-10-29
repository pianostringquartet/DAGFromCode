---
title: upperLimbVisibility(_:)
description: Sets the preferred visibility of the user’s upper limbs, while an  scene is presented.
source: https://developer.apple.com/documentation/swiftui/view/upperlimbvisibility(_:)
timestamp: 2025-10-29T00:10:17.572Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# upperLimbVisibility(_:)

**Available on:** visionOS 1.0+

> Sets the preferred visibility of the user’s upper limbs, while an  scene is presented.

```swift
nonisolated func upperLimbVisibility(_ preferredVisibility: Visibility) -> some View
```

## Parameters

**preferredVisibility**

A value indicating if the upper limbs should be visible. Use `.automatic` for a system-defined standard behavior, `.visible` to keep the upper limbs visible, and `.hidden` to hide the upper limbs.



## Discussion

The system can show the user’s upper limbs during fully immersive experiences, but you can also hide them, for example, in order to display virtual hands instead.

Note that this modifier only sets a preference and ultimately the system will decide if it will honor it or not. The system may be unable to honor the preference if the immersive space is currently not visible.

## Hiding upper limbs during immersion

- [upperLimbVisibility(_:)](/documentation/swiftui/scene/upperlimbvisibility(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
