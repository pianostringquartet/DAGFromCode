---
title: PencilHoverPose
description: A value describing the location and distance of an Apple Pencil hovering in the area above a view’s bounds.
source: https://developer.apple.com/documentation/swiftui/pencilhoverpose
timestamp: 2025-10-29T00:13:33.682Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# PencilHoverPose

**Available on:** iOS 17.5+, iPadOS 17.5+, Mac Catalyst 17.5+, macOS 14.5+

> A value describing the location and distance of an Apple Pencil hovering in the area above a view’s bounds.

```swift
struct PencilHoverPose
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)

## Getting the hover characteristics

- [anchor](/documentation/swiftui/pencilhoverpose/anchor) The location of an Apple Pencil hovering in the area above the view’s bounds, expressed as a normalized anchor point relative to that view.
- [location](/documentation/swiftui/pencilhoverpose/location) The location of an Apple Pencil hovering in the area above the view’s bounds, expressed as a point in that view’s coordinate space.
- [zDistance](/documentation/swiftui/pencilhoverpose/zdistance) The normalized distance between the screen and a hovering Apple Pencil.

## Instance Properties

- [altitude](/documentation/swiftui/pencilhoverpose/altitude) A value that represents the altitude angle of the hovering Apple Pencil.
- [azimuth](/documentation/swiftui/pencilhoverpose/azimuth) A value that represents the azimuth angle of a hovering Apple Pencil.
- [roll](/documentation/swiftui/pencilhoverpose/roll) A value that represents the barrel roll angle of the hovering Apple Pencil.

## Recognizing Apple Pencil gestures

- [onPencilDoubleTap(perform:)](/documentation/swiftui/view/onpencildoubletap(perform:))
- [onPencilSqueeze(perform:)](/documentation/swiftui/view/onpencilsqueeze(perform:))
- [preferredPencilDoubleTapAction](/documentation/swiftui/environmentvalues/preferredpencildoubletapaction)
- [preferredPencilSqueezeAction](/documentation/swiftui/environmentvalues/preferredpencilsqueezeaction)
- [PencilPreferredAction](/documentation/swiftui/pencilpreferredaction)
- [PencilDoubleTapGestureValue](/documentation/swiftui/pencildoubletapgesturevalue)
- [PencilSqueezeGestureValue](/documentation/swiftui/pencilsqueezegesturevalue)
- [PencilSqueezeGesturePhase](/documentation/swiftui/pencilsqueezegesturephase)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
