---
title: preferredPencilDoubleTapAction
description: The action that the user prefers to perform after double-tapping their Apple Pencil, as selected in the Settings app.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/preferredpencildoubletapaction
timestamp: 2025-10-29T00:13:52.937Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# preferredPencilDoubleTapAction

**Available on:** iOS 17.5+, iPadOS 17.5+, Mac Catalyst 17.5+, macOS 14.5+

> The action that the user prefers to perform after double-tapping their Apple Pencil, as selected in the Settings app.

```swift
var preferredPencilDoubleTapAction: PencilPreferredAction { get }
```

## Discussion

You can read this value by creating a property with the [Environment](/documentation/swiftui/environment) property wrapper and using it inside the action closure of the [onPencilDoubleTap(perform:)](/documentation/swiftui/view/onpencildoubletap(perform:)) view modifier as an indication of what to do after the user double-taps their Apple Pencil:

```swift
@Environment(\.preferredPencilDoubleTapAction) private var preferredAction

var body: some View {
    MyDrawingCanvas()
        .onPencilDoubleTap { value in
            switch preferredAction {
                ...
            }
        }
}
```

In macOS, this value cannot be changed by users and is always set to [switch Eraser](/documentation/swiftui/pencilpreferredaction/switcheraser).

## Recognizing Apple Pencil gestures

- [onPencilDoubleTap(perform:)](/documentation/swiftui/view/onpencildoubletap(perform:))
- [onPencilSqueeze(perform:)](/documentation/swiftui/view/onpencilsqueeze(perform:))
- [preferredPencilSqueezeAction](/documentation/swiftui/environmentvalues/preferredpencilsqueezeaction)
- [PencilPreferredAction](/documentation/swiftui/pencilpreferredaction)
- [PencilDoubleTapGestureValue](/documentation/swiftui/pencildoubletapgesturevalue)
- [PencilSqueezeGestureValue](/documentation/swiftui/pencilsqueezegesturevalue)
- [PencilSqueezeGesturePhase](/documentation/swiftui/pencilsqueezegesturephase)
- [PencilHoverPose](/documentation/swiftui/pencilhoverpose)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
