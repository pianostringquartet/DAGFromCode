---
title: accessibility
description: The kind for accessibility visuals and sorting.
source: https://developer.apple.com/documentation/swiftui/contentshapekinds/accessibility
timestamp: 2025-10-29T00:10:34.938Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [contentshapekinds](/documentation/swiftui/contentshapekinds)

**Type Property**

# accessibility

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> The kind for accessibility visuals and sorting.

```swift
static let accessibility: ContentShapeKinds
```

## Discussion

Setting a content shape with this kind causes the accessibility frame and path of the view’s underlying accessibility element to match the shape without adjusting the hit-testing shape, updating the visual focus ring that assistive apps, such as VoiceOver, draw, as well as how the element is sorted. Updating the accessibility shape is only required if the shape or size used to hit-test significantly diverges from the visual shape of the view.

To control the shape for accessibility and hit-testing, use the `interaction` kind.

## Getting shape kinds

- [interaction](/documentation/swiftui/contentshapekinds/interaction)
- [dragPreview](/documentation/swiftui/contentshapekinds/dragpreview)
- [contextMenuPreview](/documentation/swiftui/contentshapekinds/contextmenupreview)
- [focusEffect](/documentation/swiftui/contentshapekinds/focuseffect)
- [hoverEffect](/documentation/swiftui/contentshapekinds/hovereffect)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
