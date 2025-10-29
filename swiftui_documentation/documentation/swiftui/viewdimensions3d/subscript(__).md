---
title: subscript(_:)
description: Gets the value of the given depth guide.
source: https://developer.apple.com/documentation/swiftui/viewdimensions3d/subscript(_:)
timestamp: 2025-10-29T00:13:15.610Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [viewdimensions3d](/documentation/swiftui/viewdimensions3d)

**Instance Subscript**

# subscript(_:)

**Available on:** visionOS 1.0+

> Gets the value of the given depth guide.

```swift
subscript(guide: DepthAlignment) -> CGFloat { get }
```

## Overview

Find the offset of a particular guide in the corresponding view by using that guide as an index to read from the context:

```swift
.alignmentGuide(.front) { context in
    context[.front] - 10
}
```

For information about using subscripts in Swift to access member elements of a collection, list, or, sequence, see [Subscripts.html](https://docs.swift.org/swift-book/LanguageGuide/Subscripts.html) in *The Swift Programming Language*.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
