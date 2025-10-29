---
title: default
description: The pointer style that uses the default platform appearance.
source: https://developer.apple.com/documentation/swiftui/pointerstyle/default
timestamp: 2025-10-29T00:14:51.646Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [pointerstyle](/documentation/swiftui/pointerstyle)

**Type Property**

# default

**Available on:** macOS 15.0+, visionOS 2.0+

> The pointer style that uses the default platform appearance.

```swift
static let `default`: PointerStyle
```

## Discussion

This is the default pointer style for interacting with content and UI elements if no other pointer style is more appropriate. This pointer style displays an arrow in macOS and a circle in iPadOS and visionOS.

You might want to set this pointer style explicitly using the [pointerStyle(_:)](/documentation/swiftui/view/pointerstyle(_:)) modifier to override another style in the environment.

## Getting built-in pointer styles

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
- [rowResize(directions:)](/documentation/swiftui/pointerstyle/rowresize(directions:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
