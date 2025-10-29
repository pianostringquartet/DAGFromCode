---
title: PencilPreferredAction
description: An action that the user prefers to perform after double-tapping their Apple Pencil.
source: https://developer.apple.com/documentation/swiftui/pencilpreferredaction
timestamp: 2025-10-29T00:15:16.764Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# PencilPreferredAction

**Available on:** iOS 17.5+, iPadOS 17.5+, Mac Catalyst 17.5+, macOS 14.5+

> An action that the user prefers to perform after double-tapping their Apple Pencil.

```swift
struct PencilPreferredAction
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)

## Getting the preffered actions

- [ignore](/documentation/swiftui/pencilpreferredaction/ignore) An action that does nothing.
- [showColorPalette](/documentation/swiftui/pencilpreferredaction/showcolorpalette) An action that toggles the display of the color palette.
- [showInkAttributes](/documentation/swiftui/pencilpreferredaction/showinkattributes) An action that toggles the display of the current tool’s ink attributes.
- [switchEraser](/documentation/swiftui/pencilpreferredaction/switcheraser) An action that switches between the current tool and the eraser.
- [switchPrevious](/documentation/swiftui/pencilpreferredaction/switchprevious) An action that switches between the current tool and the last used tool.

## Type Properties

- [runSystemShortcut](/documentation/swiftui/pencilpreferredaction/runsystemshortcut) An action that runs a system shortcut.
- [showContextualPalette](/documentation/swiftui/pencilpreferredaction/showcontextualpalette) An action that toggles the display of the contextual palette, or the undo/redo panel if contextual palette is not available.

## Recognizing Apple Pencil gestures

- [onPencilDoubleTap(perform:)](/documentation/swiftui/view/onpencildoubletap(perform:))
- [onPencilSqueeze(perform:)](/documentation/swiftui/view/onpencilsqueeze(perform:))
- [preferredPencilDoubleTapAction](/documentation/swiftui/environmentvalues/preferredpencildoubletapaction)
- [preferredPencilSqueezeAction](/documentation/swiftui/environmentvalues/preferredpencilsqueezeaction)
- [PencilDoubleTapGestureValue](/documentation/swiftui/pencildoubletapgesturevalue)
- [PencilSqueezeGestureValue](/documentation/swiftui/pencilsqueezegesturevalue)
- [PencilSqueezeGesturePhase](/documentation/swiftui/pencilsqueezegesturephase)
- [PencilHoverPose](/documentation/swiftui/pencilhoverpose)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
