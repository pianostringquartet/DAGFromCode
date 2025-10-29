---
title: rect(uniformBottomCorners:topLeadingCorner:topTrailingCorner:)
description: A rectangle shape that is aligned inside the frame of the view containing it. A corner style will be uniformly applied to the bottom two corners, while the top two corners will each has an indivdual corner style.
source: https://developer.apple.com/documentation/swiftui/shape/rect(uniformbottomcorners:topleadingcorner:toptrailingcorner:)
timestamp: 2025-10-29T00:13:51.703Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shape](/documentation/swiftui/shape)

**Type Method**

# rect(uniformBottomCorners:topLeadingCorner:topTrailingCorner:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> A rectangle shape that is aligned inside the frame of the view containing it. A corner style will be uniformly applied to the bottom two corners, while the top two corners will each has an indivdual corner style.

```swift
static func rect(uniformBottomCorners: Edge.Corner.Style, topLeadingCorner: Edge.Corner.Style, topTrailingCorner: Edge.Corner.Style) -> Self
```

## Parameters

**uniformBottomCorners**

The corner style to be applied on the bottom two corners uniformly. This shape will first resolve the two corners individually, then pick the largest resolved radius out of the two and apply it uniformly to achieve the symmetric look.



**topLeadingCorner**

The top leading corner style.



**topTrailingCorner**

The top trailing corner style.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
