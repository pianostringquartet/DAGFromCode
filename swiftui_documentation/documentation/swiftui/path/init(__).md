---
title: init(_:)
description: Creates an empty path, then executes a closure to add its initial elements.
source: https://developer.apple.com/documentation/swiftui/path/init(_:)
timestamp: 2025-10-29T00:14:41.109Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [path](/documentation/swiftui/path)

**Initializer**

# init(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates an empty path, then executes a closure to add its initial elements.

```swift
init(_ callback: (inout Path) -> ())
```

## Parameters

**callback**

The Swift function that will be called to initialize the new path.



## Creating a path

- [init()](/documentation/swiftui/path/init())
- [init(ellipseIn:)](/documentation/swiftui/path/init(ellipsein:))
- [init(roundedRect:cornerRadius:style:)](/documentation/swiftui/path/init(roundedrect:cornerradius:style:))
- [init(roundedRect:cornerSize:style:)](/documentation/swiftui/path/init(roundedrect:cornersize:style:))
- [init(roundedRect:cornerRadii:style:)](/documentation/swiftui/path/init(roundedrect:cornerradii:style:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
