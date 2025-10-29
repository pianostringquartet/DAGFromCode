---
title: transform
description: The 3D affine transform of the manipulated view, or  if the view doesn’t have a well-defined 3D affine transfrorm.
source: https://developer.apple.com/documentation/swiftui/manipulable/event/value-swift.struct/transform
timestamp: 2025-10-29T00:15:28.138Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [manipulable](/documentation/swiftui/manipulable) › [event](/documentation/swiftui/manipulable/event) › [value-swift.struct](/documentation/swiftui/manipulable/event/value-swift.struct)

**Instance Property**

# transform

**Available on:** visionOS 26.0+

> The 3D affine transform of the manipulated view, or  if the view doesn’t have a well-defined 3D affine transfrorm.

```swift
let transform: AffineTransform3D?
```

## Discussion

A view may not have a well-defined 3D affine transform e.g. when it’s affected by a projection transform.

This transform is in the coordinate space configured in the view modifier.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
