---
title: hoverEffect
description: The kind for hover effects.
source: https://developer.apple.com/documentation/swiftui/contentshapekinds/hovereffect
timestamp: 2025-10-29T00:11:41.469Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [contentshapekinds](/documentation/swiftui/contentshapekinds)

**Type Property**

# hoverEffect

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, tvOS 18.0+, visionOS 1.0+

> The kind for hover effects.

```swift
static let hoverEffect: ContentShapeKinds
```

## Discussion

When using this kind, only the preview shape is affected. To control the shape used to hit-test and start the effect, use the `interaction` kind.

On tvOS, this is used to define the shape of any hover effect applied to focusable and hoverable controls, for example button border or clipping shapes.

This kind does not affect the `onHover` modifier.

## Getting shape kinds

- [interaction](/documentation/swiftui/contentshapekinds/interaction)
- [dragPreview](/documentation/swiftui/contentshapekinds/dragpreview)
- [contextMenuPreview](/documentation/swiftui/contentshapekinds/contextmenupreview)
- [focusEffect](/documentation/swiftui/contentshapekinds/focuseffect)
- [accessibility](/documentation/swiftui/contentshapekinds/accessibility)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
