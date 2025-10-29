---
title: init(roundedRect:cornerRadius:style:)
description: Creates a path containing a rounded rectangle.
source: https://developer.apple.com/documentation/swiftui/path/init(roundedrect:cornerradius:style:)
timestamp: 2025-10-29T00:14:42.056Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [path](/documentation/swiftui/path)

**Initializer**

# init(roundedRect:cornerRadius:style:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a path containing a rounded rectangle.

```swift
init(roundedRect rect: CGRect, cornerRadius: CGFloat, style: RoundedCornerStyle = .continuous)
```

## Parameters

**rect**

A rectangle, specified in user space coordinates.



**cornerRadius**

The radius of all corners of the rectangle, specified in user space coordinates.



**style**

The corner style. Defaults to the `continous` style if not specified.



## Discussion

This is a convenience function that creates a path of a rounded rectangle. Using this convenience function is more efficient than creating a path and adding a rounded rectangle to it.

## Creating a path

- [init()](/documentation/swiftui/path/init())
- [init(_:)](/documentation/swiftui/path/init(_:))
- [init(ellipseIn:)](/documentation/swiftui/path/init(ellipsein:))
- [init(roundedRect:cornerSize:style:)](/documentation/swiftui/path/init(roundedrect:cornersize:style:))
- [init(roundedRect:cornerRadii:style:)](/documentation/swiftui/path/init(roundedrect:cornerradii:style:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
