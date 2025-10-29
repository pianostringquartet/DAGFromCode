---
title: rect(uniformTopCorners:bottomLeadingCorner:bottomTrailingCorner:)
description: A rectangle shape that is aligned inside the frame of the view containing it. A corner style will be uniformly applied to the top two corners, while the bottom two corners will each has an indivdual corner style.
source: https://developer.apple.com/documentation/swiftui/shape/rect(uniformtopcorners:bottomleadingcorner:bottomtrailingcorner:)
timestamp: 2025-10-29T00:09:58.228Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shape](/documentation/swiftui/shape)

**Type Method**

# rect(uniformTopCorners:bottomLeadingCorner:bottomTrailingCorner:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> A rectangle shape that is aligned inside the frame of the view containing it. A corner style will be uniformly applied to the top two corners, while the bottom two corners will each has an indivdual corner style.

```swift
static func rect(uniformTopCorners: Edge.Corner.Style, bottomLeadingCorner: Edge.Corner.Style, bottomTrailingCorner: Edge.Corner.Style) -> Self
```

## Parameters

**uniformTopCorners**

The corner style to be applied on the top two corners uniformly. This shape will first resolve the two corners individually, then pick the largest resolved radius out of the two and apply it uniformly to achieve the symmetric look.



**bottomLeadingCorner**

The bottom leading corner style.



**bottomTrailingCorner**

The bottom trailing corner style.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
