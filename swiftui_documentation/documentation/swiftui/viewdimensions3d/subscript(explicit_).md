---
title: subscript(explicit:)
description: Gets the explicit value of the given depth alignment guide
source: https://developer.apple.com/documentation/swiftui/viewdimensions3d/subscript(explicit:)
timestamp: 2025-10-29T00:10:41.586Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [viewdimensions3d](/documentation/swiftui/viewdimensions3d)

**Instance Subscript**

# subscript(explicit:)

**Available on:** visionOS 1.0+

> Gets the explicit value of the given depth alignment guide

```swift
subscript(explicit guide: DepthAlignment) -> CGFloat? { get }
```

## Overview

Find the depth offset of a particular guide in the corresponding view by using that guide as an index to read from the context:

```swift
.alignmentGuide(.front) { context in
    context[.front] - 10
}
```

This subscript returns `nil` if no value exists for the guide.

For information about using subscripts in Swift to access member elements of a collection, list, or, sequence, see [Subscripts.html](https://docs.swift.org/swift-book/LanguageGuide/Subscripts.html) in *The Swift Programming Language*.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
