---
title: rect(uniformLeadingCorners:uniformTrailingCorners:)
description: A rectangle shape that is aligned inside the frame of the view containing it. A corner style will be uniformly applied to the leading two corners, while another corner style will be uniformly applied to the trailing two.
source: https://developer.apple.com/documentation/swiftui/shape/rect(uniformleadingcorners:uniformtrailingcorners:)
timestamp: 2025-10-29T00:09:38.079Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shape](/documentation/swiftui/shape)

**Type Method**

# rect(uniformLeadingCorners:uniformTrailingCorners:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> A rectangle shape that is aligned inside the frame of the view containing it. A corner style will be uniformly applied to the leading two corners, while another corner style will be uniformly applied to the trailing two.

```swift
static func rect(uniformLeadingCorners: Edge.Corner.Style, uniformTrailingCorners: Edge.Corner.Style) -> Self
```

## Parameters

**uniformLeadingCorners**

The corner style to be applied on the leading two corners uniformly. This shape will first resolve the two corners individually, then pick the largest resolved radius out of the two and apply it uniformly to achieve the symmetric look.



**uniformTrailingCorners**

The corner style to be applied on the trailing two corners uniformly. This shape will first resolve the two corners individually, then pick the largest resolved radius out of the two and apply it uniformly to achieve the symmetric look.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
