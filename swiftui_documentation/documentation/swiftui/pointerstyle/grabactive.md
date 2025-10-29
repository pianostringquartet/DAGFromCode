---
title: grabActive
description: The pointer style appropriate for actively dragging to reposition content within specific bounds, such as panning a large image.
source: https://developer.apple.com/documentation/swiftui/pointerstyle/grabactive
timestamp: 2025-10-29T00:11:22.961Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [pointerstyle](/documentation/swiftui/pointerstyle)

**Type Property**

# grabActive

**Available on:** macOS 15.0+

> The pointer style appropriate for actively dragging to reposition content within specific bounds, such as panning a large image.

```swift
static let grabActive: PointerStyle
```

## Discussion

This pointer style displays a closed hand to indicate that the content is currently being repositioned. Typically it’s used along with the `PointerStyle.grabIdle` pointer style to indicate that repositioning the content is possible.

You may apply this pointer style to a single view or a view hierarchy using the [pointerStyle(_:)](/documentation/swiftui/view/pointerstyle(_:)) modifier.

## Getting built-in pointer styles

- [default](/documentation/swiftui/pointerstyle/default)
- [horizontalText](/documentation/swiftui/pointerstyle/horizontaltext)
- [verticalText](/documentation/swiftui/pointerstyle/verticaltext)
- [rectSelection](/documentation/swiftui/pointerstyle/rectselection)
- [grabIdle](/documentation/swiftui/pointerstyle/grabidle)
- [link](/documentation/swiftui/pointerstyle/link)
- [zoomIn](/documentation/swiftui/pointerstyle/zoomin)
- [zoomOut](/documentation/swiftui/pointerstyle/zoomout)
- [frameResize(position:directions:)](/documentation/swiftui/pointerstyle/frameresize(position:directions:))
- [columnResize(directions:)](/documentation/swiftui/pointerstyle/columnresize(directions:))
- [rowResize(directions:)](/documentation/swiftui/pointerstyle/rowresize(directions:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
