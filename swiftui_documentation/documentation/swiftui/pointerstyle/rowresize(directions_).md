---
title: rowResize(directions:)
description: The pointer style for resizing a row, or horizontal division.
source: https://developer.apple.com/documentation/swiftui/pointerstyle/rowresize(directions:)
timestamp: 2025-10-29T00:14:50.050Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [pointerstyle](/documentation/swiftui/pointerstyle)

**Type Method**

# rowResize(directions:)

**Available on:** macOS 15.0+

> The pointer style for resizing a row, or horizontal division.

```swift
static func rowResize(directions: VerticalDirection.Set) -> PointerStyle
```

## Parameters

**directions**

The vertical directions in which a row can be resized.



## Discussion

You may apply this pointer style to a single view or a view hierarchy using the [pointerStyle(_:)](/documentation/swiftui/view/pointerstyle(_:)) modifier.

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
- [frameResize(position:directions:)](/documentation/swiftui/pointerstyle/frameresize(position:directions:))
- [columnResize(directions:)](/documentation/swiftui/pointerstyle/columnresize(directions:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
