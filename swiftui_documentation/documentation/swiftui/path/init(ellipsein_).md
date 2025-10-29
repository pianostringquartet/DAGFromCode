---
title: init(ellipseIn:)
description: Creates a path as an ellipse within the given rectangle.
source: https://developer.apple.com/documentation/swiftui/path/init(ellipsein:)
timestamp: 2025-10-29T00:12:41.715Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [path](/documentation/swiftui/path)

**Initializer**

# init(ellipseIn:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a path as an ellipse within the given rectangle.

```swift
init(ellipseIn rect: CGRect)
```

## Parameters

**rect**

The rectangle that bounds the ellipse.



## Discussion

This is a convenience function that creates a path of an ellipse. Using this convenience function is more efficient than creating a path and adding an ellipse to it.

The ellipse is approximated by a sequence of Bézier curves. Its center is the midpoint of the rectangle defined by the rect parameter. If the rectangle is square, then the ellipse is circular with a radius equal to one-half the width (or height) of the rectangle. If the rect parameter specifies a rectangular shape, then the major and minor axes of the ellipse are defined by the width and height of the rectangle.

The ellipse forms a complete subpath of the path—that is, the ellipse drawing starts with a move-to operation and ends with a close-subpath operation, with all moves oriented in the clockwise direction. If you supply an affine transform, then the constructed Bézier curves that define the ellipse are transformed before they are added to the path.

## Creating a path

- [init()](/documentation/swiftui/path/init())
- [init(_:)](/documentation/swiftui/path/init(_:))
- [init(roundedRect:cornerRadius:style:)](/documentation/swiftui/path/init(roundedrect:cornerradius:style:))
- [init(roundedRect:cornerSize:style:)](/documentation/swiftui/path/init(roundedrect:cornersize:style:))
- [init(roundedRect:cornerRadii:style:)](/documentation/swiftui/path/init(roundedrect:cornerradii:style:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
