---
title: init(corners:isUniform:)
description: Create a rectangle with the same corner style set on four corners.
source: https://developer.apple.com/documentation/swiftui/concentricrectangle/init(corners:isuniform:)
timestamp: 2025-10-29T00:11:58.724Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [concentricrectangle](/documentation/swiftui/concentricrectangle)

**Initializer**

# init(corners:isUniform:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Create a rectangle with the same corner style set on four corners.

```swift
init(corners: Edge.Corner.Style, isUniform: Bool = false)
```

## Parameters

**corners**

The corner style for all four corners.



**isUniform**

Should the corner style on each corner be applied individually or uniformly.



## Discussion

A [Concentric Rectangle](/documentation/swiftui/concentricrectangle) with all four corners set to concentric individually can vary in resolved radius. This can happen when the rectangle is not centered within the container shape, or the container shape itself has different radius per corner. If set to be uniform, [Concentric Rectangle](/documentation/swiftui/concentricrectangle) will resolve each corner on its own first, then pick the largest resolved radius out of the corners and apply it uniformly to achieve the symmetric look.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
