---
title: subscript(explicit:)
description: Gets the explicit value of the given horizontal alignment guide.
source: https://developer.apple.com/documentation/swiftui/viewdimensions/subscript(explicit:)
timestamp: 2025-10-29T00:11:28.053Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [viewdimensions](/documentation/swiftui/viewdimensions)

**Instance Subscript**

# subscript(explicit:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Gets the explicit value of the given horizontal alignment guide.

```swift
subscript(explicit guide: HorizontalAlignment) -> CGFloat? { get }
```

## Overview

Find the horizontal offset of a particular guide in the corresponding view by using that guide as an index to read from the context:

```swift
.alignmentGuide(.leading) { context in
    context[.leading] - 10
}
```

This subscript returns `nil` if no value exists for the guide.

For information about using subscripts in Swift to access member elements of a collection, list, or, sequence, see [Subscripts.html](https://docs.swift.org/swift-book/LanguageGuide/Subscripts.html) in *The Swift Programming Language*.

## Accessing guide values

- [subscript(_:)](/documentation/swiftui/viewdimensions/subscript(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
