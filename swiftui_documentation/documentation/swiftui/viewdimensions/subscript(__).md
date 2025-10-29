---
title: subscript(_:)
description: Gets the value of the given horizontal guide.
source: https://developer.apple.com/documentation/swiftui/viewdimensions/subscript(_:)
timestamp: 2025-10-29T00:14:27.013Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [viewdimensions](/documentation/swiftui/viewdimensions)

**Instance Subscript**

# subscript(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Gets the value of the given horizontal guide.

```swift
subscript(guide: HorizontalAlignment) -> CGFloat { get }
```

## Overview

Find the offset of a particular guide in the corresponding view by using that guide as an index to read from the context:

```swift
.alignmentGuide(.leading) { context in
    context[.leading] - 10
}
```

For information about using subscripts in Swift to access member elements of a collection, list, or, sequence, see [Subscripts.html](https://docs.swift.org/swift-book/LanguageGuide/Subscripts.html) in *The Swift Programming Language*.

## Accessing guide values

- [subscript(explicit:)](/documentation/swiftui/viewdimensions/subscript(explicit:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
