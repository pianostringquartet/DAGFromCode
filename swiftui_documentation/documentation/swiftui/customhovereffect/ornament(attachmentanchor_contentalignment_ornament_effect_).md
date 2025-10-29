---
title: ornament(attachmentAnchor:contentAlignment:ornament:effect:)
description: Presents an ornament on hover.
source: https://developer.apple.com/documentation/swiftui/customhovereffect/ornament(attachmentanchor:contentalignment:ornament:effect:)
timestamp: 2025-10-29T00:14:33.301Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [customhovereffect](/documentation/swiftui/customhovereffect)

**Type Method**

# ornament(attachmentAnchor:contentAlignment:ornament:effect:)

**Available on:** visionOS 26.0+

> Presents an ornament on hover.

```swift
nonisolated static func ornament<Content, EffectContent>(attachmentAnchor: OrnamentAttachmentAnchor, contentAlignment: Alignment3D = .center, @ViewBuilder ornament: () -> Content, effect: @escaping (EmptyHoverEffectContent, Bool, GeometryProxy) -> EffectContent) -> OrnamentHoverContentEffect<Content, EffectContent> where Self == OrnamentHoverContentEffect<Content, EffectContent>, Content : View, EffectContent : HoverEffectContent
```

## Parameters

**attachmentAnchor**

The positioning anchor that defines the attachment point of the ornament.



**contentAlignment**

The alignment of the ornament with its attachment anchor.



**ornament**

The content of the ornament.



**effect**

The effect used to present the ornament.



## Discussion

Use this method to present an ornament at the specified position when the view is hovered. The ornament will be presented using the provided `effect`.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
