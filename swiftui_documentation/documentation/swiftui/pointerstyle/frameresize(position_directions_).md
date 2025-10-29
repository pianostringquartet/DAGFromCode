---
title: frameResize(position:directions:)
description: The pointer style for resizing a rectangular frame from a specific edge or corner.
source: https://developer.apple.com/documentation/swiftui/pointerstyle/frameresize(position:directions:)
timestamp: 2025-10-29T00:12:15.379Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [pointerstyle](/documentation/swiftui/pointerstyle)

**Type Method**

# frameResize(position:directions:)

**Available on:** macOS 15.0+

> The pointer style for resizing a rectangular frame from a specific edge or corner.

```swift
static func frameResize(position: FrameResizePosition, directions: FrameResizeDirection.Set = .all) -> PointerStyle
```

## Parameters

**position**

The position along the perimeter of the frame (its edges and corners) from which it’s resized.



**directions**

The directions in which the frame can be resized.



## Getting built-in pointer styles

- [default](/documentation/swiftui/pointerstyle/default)
- [horizontalText](/documentation/swiftui/pointerstyle/horizontaltext)
- [verticalText](/documentation/swiftui/pointerstyle/verticaltext)
- [rectSelection](/documentation/swiftui/pointerstyle/rectselection)
- [grabIdle](/documentation/swiftui/pointerstyle/grabidle)
- [grabActive](/documentation/swiftui/pointerstyle/grabactive)
- [link](/documentation/swiftui/pointerstyle/link)
- [zoomIn](/documentation/swiftui/pointerstyle/zoomin)
- [zoomOut](/documentation/swiftui/pointerstyle/zoomout)
- [columnResize(directions:)](/documentation/swiftui/pointerstyle/columnresize(directions:))
- [rowResize(directions:)](/documentation/swiftui/pointerstyle/rowresize(directions:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
