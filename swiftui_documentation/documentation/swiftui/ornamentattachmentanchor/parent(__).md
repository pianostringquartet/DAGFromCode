---
title: parent(_:)
description: The anchor point for the ornament expressed as a 3D unit point relative to its parent.
source: https://developer.apple.com/documentation/swiftui/ornamentattachmentanchor/parent(_:)
timestamp: 2025-10-29T00:13:10.686Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [ornamentattachmentanchor](/documentation/swiftui/ornamentattachmentanchor)

**Type Method**

# parent(_:)

**Available on:** visionOS 26.0+

> The anchor point for the ornament expressed as a 3D unit point relative to its parent.

```swift
static func parent(_ anchor: UnitPoint3D) -> OrnamentAttachmentAnchor
```

## Discussion

The parent depends on where the ornament modifier is placed. When used inside another ornament context, that ornament is the parent. Otherwise, it’s the Scene itself.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
