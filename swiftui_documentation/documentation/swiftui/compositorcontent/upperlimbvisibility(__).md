---
title: upperLimbVisibility(_:)
description: Sets the preferred visibility of the user’s upper limbs, while an  scene is presented.
source: https://developer.apple.com/documentation/swiftui/compositorcontent/upperlimbvisibility(_:)
timestamp: 2025-10-29T00:11:51.815Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [compositorcontent](/documentation/swiftui/compositorcontent)

**Instance Method**

# upperLimbVisibility(_:)

**Available on:** macOS 26.0+, visionOS 26.0+

> Sets the preferred visibility of the user’s upper limbs, while an  scene is presented.

```swift
nonisolated func upperLimbVisibility(_ preferredVisibility: Visibility) -> some CompositorContent
```

## Parameters

**preferredVisibility**

A value indicating if the upper limbs should be visible. Use `.automatic` for a system-defined standard behavior, `.visible` to keep the upper limbs visible, and `.hidden` to hide the upper limbs.



## Discussion

The system can show the user’s upper limbs during fully immersive experiences, but you can also hide them, for example, in order to display virtual hands instead.

Note that this modifier only sets a preference and ultimately the system will decide if it will honor it or not. The system may be unable to honor the preference if the immersive space is currently not visible.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
