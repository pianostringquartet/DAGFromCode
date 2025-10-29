---
title: materialActiveAppearance(_:)
description: Sets an explicit active appearance for this material.
source: https://developer.apple.com/documentation/swiftui/material/materialactiveappearance(_:)
timestamp: 2025-10-29T00:13:09.599Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [material](/documentation/swiftui/material)

**Instance Method**

# materialActiveAppearance(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Sets an explicit active appearance for this material.

```swift
func materialActiveAppearance(_ appearance: MaterialActiveAppearance) -> Material
```

## Discussion

Materials used as the `window` container background on macOS will automatically appear inactive when their the window appears inactive, but can be made to always appear active by setting the active appearance behavior to be always active:

```swift
Text("Hello, World!")
    .containerBackground(
        Material.regular.materialActiveAppearance(.active),
        for: .window)
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
