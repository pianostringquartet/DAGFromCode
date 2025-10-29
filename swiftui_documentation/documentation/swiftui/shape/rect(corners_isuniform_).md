---
title: rect(corners:isUniform:)
description: A rectangle shape that is aligned inside the frame of the view containing it. The same corner style will be set on four corners to be square, rounded, or concentric to the container shape.
source: https://developer.apple.com/documentation/swiftui/shape/rect(corners:isuniform:)
timestamp: 2025-10-29T00:11:28.265Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shape](/documentation/swiftui/shape)

**Type Method**

# rect(corners:isUniform:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> A rectangle shape that is aligned inside the frame of the view containing it. The same corner style will be set on four corners to be square, rounded, or concentric to the container shape.

```swift
static func rect(corners: Edge.Corner.Style, isUniform: Bool = false) -> Self
```

## Parameters

**corners**

The corner style for all four corners.



**isUniform**

Should the corner style on each corner be applied individually or uniformly.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
