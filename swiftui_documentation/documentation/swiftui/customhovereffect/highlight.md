---
title: highlight
description: A hover effect that highlights views using a light source to indicate position.
source: https://developer.apple.com/documentation/swiftui/customhovereffect/highlight
timestamp: 2025-10-29T00:11:58.147Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [customhovereffect](/documentation/swiftui/customhovereffect)

**Type Property**

# highlight

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, tvOS 18.0+, visionOS 2.0+

> A hover effect that highlights views using a light source to indicate position.

```swift
static var highlight: HighlightHoverEffect { get }
```

## Discussion

For pointer input this effect morphs the pointer into a platter behind the view and shows a light source indicating position.

On tvOS it applies a projection effect accompanied with a specular highlight on the view when contained within a focused view. It also incorporates motion effects to produce a parallax effect by adjusting the projection matrix and specular offset.

On visionOS this effect applies a glow effect based on where the user is looking or touching the view.

## Getting built-in hover effects

- [automatic](/documentation/swiftui/customhovereffect/automatic)
- [empty](/documentation/swiftui/customhovereffect/empty)
- [lift](/documentation/swiftui/customhovereffect/lift)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
