---
title: grabIdle
description: The pointer style appropriate to indicate that dragging to reposition content within specific bounds, such as panning a large image, is possible.
source: https://developer.apple.com/documentation/swiftui/pointerstyle/grabidle
timestamp: 2025-10-29T00:09:51.716Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [pointerstyle](/documentation/swiftui/pointerstyle)

**Type Property**

# grabIdle

**Available on:** macOS 15.0+

> The pointer style appropriate to indicate that dragging to reposition content within specific bounds, such as panning a large image, is possible.

```swift
static let grabIdle: PointerStyle
```

## Discussion

This pointer style displays an open hand to indicate that the content can be repositioned. Typically it’s used along with the `PointerStyle.grabActive` pointer style while a mouse or trackpad is actively clicked to indicate that the content is currently being repositioned.

You may apply this pointer style to a single view or a view hierarchy using the [pointerStyle(_:)](/documentation/swiftui/view/pointerstyle(_:)) modifier.

## Getting built-in pointer styles

- [default](/documentation/swiftui/pointerstyle/default)
- [horizontalText](/documentation/swiftui/pointerstyle/horizontaltext)
- [verticalText](/documentation/swiftui/pointerstyle/verticaltext)
- [rectSelection](/documentation/swiftui/pointerstyle/rectselection)
- [grabActive](/documentation/swiftui/pointerstyle/grabactive)
- [link](/documentation/swiftui/pointerstyle/link)
- [zoomIn](/documentation/swiftui/pointerstyle/zoomin)
- [zoomOut](/documentation/swiftui/pointerstyle/zoomout)
- [frameResize(position:directions:)](/documentation/swiftui/pointerstyle/frameresize(position:directions:))
- [columnResize(directions:)](/documentation/swiftui/pointerstyle/columnresize(directions:))
- [rowResize(directions:)](/documentation/swiftui/pointerstyle/rowresize(directions:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
