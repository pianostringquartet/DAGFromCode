---
title: ornament(attachmentAnchor:contentAlignment:ornament:)
description: Presents an ornament on hover.
source: https://developer.apple.com/documentation/swiftui/customhovereffect/ornament(attachmentanchor:contentalignment:ornament:)
timestamp: 2025-10-29T00:14:34.966Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [customhovereffect](/documentation/swiftui/customhovereffect)

**Type Method**

# ornament(attachmentAnchor:contentAlignment:ornament:)

**Available on:** visionOS 26.0+

> Presents an ornament on hover.

```swift
nonisolated static func ornament<Content>(attachmentAnchor: OrnamentAttachmentAnchor, contentAlignment: Alignment3D = .center, @ViewBuilder ornament: () -> Content) -> OrnamentHoverEffect<Content> where Self == OrnamentHoverEffect<Content>, Content : View
```

## Parameters

**attachmentAnchor**

The positioning anchor that defines the attachment point of the ornament.



**contentAlignment**

The alignment of the ornament with its attachment anchor.



**ornament**

The content of the ornament.



## Discussion

Use this method to show an ornament at the specified position when the view is hovered. The ornament will be shown with the default fade animation.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
