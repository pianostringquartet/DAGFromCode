---
title: preferredPencilSqueezeAction
description: The action that the user prefers to perform when squeezing their Apple Pencil, as selected in the Settings app.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/preferredpencilsqueezeaction
timestamp: 2025-10-29T00:15:21.143Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# preferredPencilSqueezeAction

**Available on:** iOS 17.5+, iPadOS 17.5+, Mac Catalyst 17.5+, macOS 14.5+

> The action that the user prefers to perform when squeezing their Apple Pencil, as selected in the Settings app.

```swift
var preferredPencilSqueezeAction: PencilPreferredAction { get }
```

## Discussion

You can read this value by creating a property with the [Environment](/documentation/swiftui/environment) property wrapper and using it inside the action closure of the [onPencilSqueeze(perform:)](/documentation/swiftui/view/onpencilsqueeze(perform:)) view modifier as an indication of what to do when the user squeezes their Apple Pencil:

```swift
@Environment(\.preferredPencilSqueezeAction) private var preferredAction

var body: some View {
    MyDrawingCanvas()
        .onPencilSqueeze { phase in
            switch (phase, preferredAction) {
                ...
            }
        }
}
```

In macOS, this value cannot be changed by users and is always set to [show Contextual Palette](/documentation/swiftui/pencilpreferredaction/showcontextualpalette).

## Recognizing Apple Pencil gestures

- [onPencilDoubleTap(perform:)](/documentation/swiftui/view/onpencildoubletap(perform:))
- [onPencilSqueeze(perform:)](/documentation/swiftui/view/onpencilsqueeze(perform:))
- [preferredPencilDoubleTapAction](/documentation/swiftui/environmentvalues/preferredpencildoubletapaction)
- [PencilPreferredAction](/documentation/swiftui/pencilpreferredaction)
- [PencilDoubleTapGestureValue](/documentation/swiftui/pencildoubletapgesturevalue)
- [PencilSqueezeGestureValue](/documentation/swiftui/pencilsqueezegesturevalue)
- [PencilSqueezeGesturePhase](/documentation/swiftui/pencilsqueezegesturephase)
- [PencilHoverPose](/documentation/swiftui/pencilhoverpose)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
