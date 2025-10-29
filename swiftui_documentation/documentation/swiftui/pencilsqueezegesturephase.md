---
title: PencilSqueezeGesturePhase
description: Describes the phase and value of an Apple Pencil squeeze gesture.
source: https://developer.apple.com/documentation/swiftui/pencilsqueezegesturephase
timestamp: 2025-10-29T00:14:27.397Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Enumeration**

# PencilSqueezeGesturePhase

**Available on:** iOS 17.5+, iPadOS 17.5+, Mac Catalyst 17.5+, macOS 14.5+

> Describes the phase and value of an Apple Pencil squeeze gesture.

```swift
@frozen enum PencilSqueezeGesturePhase
```

## Overview

When you use the [onPencilSqueeze(perform:)](/documentation/swiftui/view/onpencilsqueeze(perform:)) view modifier, you can handle the Apple Pencil squeeze gesture’s phase in the `action` closure.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)

## Enumeration Cases

- [PencilSqueezeGesturePhase.active(_:)](/documentation/swiftui/pencilsqueezegesturephase/active(_:)) The user started squeezing their Apple Pencil.
- [PencilSqueezeGesturePhase.ended(_:)](/documentation/swiftui/pencilsqueezegesturephase/ended(_:)) The user successfully completed a squeeze gesture.
- [PencilSqueezeGesturePhase.failed](/documentation/swiftui/pencilsqueezegesturephase/failed) The user started squeezing their Apple Pencil but failed to successfully complete the gesture.

## Recognizing Apple Pencil gestures

- [onPencilDoubleTap(perform:)](/documentation/swiftui/view/onpencildoubletap(perform:))
- [onPencilSqueeze(perform:)](/documentation/swiftui/view/onpencilsqueeze(perform:))
- [preferredPencilDoubleTapAction](/documentation/swiftui/environmentvalues/preferredpencildoubletapaction)
- [preferredPencilSqueezeAction](/documentation/swiftui/environmentvalues/preferredpencilsqueezeaction)
- [PencilPreferredAction](/documentation/swiftui/pencilpreferredaction)
- [PencilDoubleTapGestureValue](/documentation/swiftui/pencildoubletapgesturevalue)
- [PencilSqueezeGestureValue](/documentation/swiftui/pencilsqueezegesturevalue)
- [PencilHoverPose](/documentation/swiftui/pencilhoverpose)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
