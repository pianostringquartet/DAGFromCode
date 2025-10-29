---
title: PointerStyle
description: A style describing the appearance of the pointer (also called a cursor) when it’s hovered over a view.
source: https://developer.apple.com/documentation/swiftui/pointerstyle
timestamp: 2025-10-29T00:09:23.306Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# PointerStyle

**Available on:** macOS 15.0+, visionOS 2.0+

> A style describing the appearance of the pointer (also called a cursor) when it’s hovered over a view.

```swift
struct PointerStyle
```

## Overview

Use the [pointerStyle(_:)](/documentation/swiftui/view/pointerstyle(_:)) view modifier to set a view’s pointer style.

For guidance on choosing an appropriate pointer style, refer to [pointing](/design/Human-Interface-Guidelines/pointing-devices) in the Human Interface Guidelines.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting built-in pointer styles

- [default](/documentation/swiftui/pointerstyle/default) The pointer style that uses the default platform appearance.
- [horizontalText](/documentation/swiftui/pointerstyle/horizontaltext) The pointer style appropriate for selecting or inserting text in a horizontal layout.
- [verticalText](/documentation/swiftui/pointerstyle/verticaltext) The pointer style appropriate for selecting or inserting text in a vertical layout.
- [rectSelection](/documentation/swiftui/pointerstyle/rectselection) The pointer style appropriate for precise rectangular selection, such as selecting a portion of an image or multiple lines of text.
- [grabIdle](/documentation/swiftui/pointerstyle/grabidle) The pointer style appropriate to indicate that dragging to reposition content within specific bounds, such as panning a large image, is possible.
- [grabActive](/documentation/swiftui/pointerstyle/grabactive) The pointer style appropriate for actively dragging to reposition content within specific bounds, such as panning a large image.
- [link](/documentation/swiftui/pointerstyle/link) The pointer style appropriate for content opens a URL link to a webpage, document, or other item when clicked.
- [zoomIn](/documentation/swiftui/pointerstyle/zoomin) The pointer style appropriate to indicate that the content can be zoomed in.
- [zoomOut](/documentation/swiftui/pointerstyle/zoomout) The pointer style appropriate to indicate that the content can be zoomed out.
- [frameResize(position:directions:)](/documentation/swiftui/pointerstyle/frameresize(position:directions:)) The pointer style for resizing a rectangular frame from a specific edge or corner.
- [columnResize(directions:)](/documentation/swiftui/pointerstyle/columnresize(directions:)) The pointer style for resizing a column, or vertical division.
- [rowResize(directions:)](/documentation/swiftui/pointerstyle/rowresize(directions:)) The pointer style for resizing a row, or horizontal division.

## Creating custom pointer styles

- [image(_:hotSpot:)](/documentation/swiftui/pointerstyle/image(_:hotspot:)) Initializes a pointer style with a given image and hot spot.
- [shape(_:eoFill:size:)](/documentation/swiftui/pointerstyle/shape(_:eofill:size:)) Initializes a pointer style with a given shape.

## Supporting types

- [HorizontalDirection](/documentation/swiftui/horizontaldirection) A direction on the horizontal axis.
- [VerticalDirection](/documentation/swiftui/verticaldirection) A direction on the horizontal axis.
- [FrameResizePosition](/documentation/swiftui/frameresizeposition) The position along the perimeter of a rectangular frame (its edges and corners) from which it’s resized.
- [FrameResizeDirection](/documentation/swiftui/frameresizedirection) The direction in which a rectangular frame can be resized.

## Type Properties

- [columnResize](/documentation/swiftui/pointerstyle/columnresize) The pointer style for resizing a column, or vertical division, in either direction.
- [rowResize](/documentation/swiftui/pointerstyle/rowresize) The pointer style for resizing a row, or horizontal division, in either direction.

## Modifying pointer appearance

- [pointerStyle(_:)](/documentation/swiftui/view/pointerstyle(_:))
- [pointerVisibility(_:)](/documentation/swiftui/view/pointervisibility(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
