---
title: init(roundedRect:cornerRadii:style:)
description: Creates a path as the given rounded rectangle, which may have uneven corner radii.
source: https://developer.apple.com/documentation/swiftui/path/init(roundedrect:cornerradii:style:)
timestamp: 2025-10-29T00:12:47.915Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [path](/documentation/swiftui/path)

**Initializer**

# init(roundedRect:cornerRadii:style:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a path as the given rounded rectangle, which may have uneven corner radii.

```swift
init(roundedRect rect: CGRect, cornerRadii: RectangleCornerRadii, style: RoundedCornerStyle = .continuous)
```

## Parameters

**rect**

A rectangle, specified in user space coordinates.



**cornerRadii**

The radius of each corner of the rectangle, specified in user space coordinates.



**style**

The corner style. Defaults to the `continous` style if not specified.



## Discussion

This is a convenience function that creates a path of a rounded rectangle. Using this function is more efficient than creating a path and adding a rounded rectangle to it.

## Creating a path

- [init()](/documentation/swiftui/path/init())
- [init(_:)](/documentation/swiftui/path/init(_:))
- [init(ellipseIn:)](/documentation/swiftui/path/init(ellipsein:))
- [init(roundedRect:cornerRadius:style:)](/documentation/swiftui/path/init(roundedrect:cornerradius:style:))
- [init(roundedRect:cornerSize:style:)](/documentation/swiftui/path/init(roundedrect:cornersize:style:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
