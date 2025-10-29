---
title: HoverEffectContent
description: A type that describes the effects of a view for a particular hover effect phase.
source: https://developer.apple.com/documentation/swiftui/hovereffectcontent
timestamp: 2025-10-29T00:12:42.156Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# HoverEffectContent

**Available on:** visionOS 2.0+

> A type that describes the effects of a view for a particular hover effect phase.

```swift
protocol HoverEffectContent
```

## Overview

```swift
Color.red
    .hoverEffect { effect, isActive, proxy in
        effect.opacity(isActive ? 1 : 0.5)
    }
```

You don’t conform to this protocol yourself. Instead, effects are described by calling modifier functions on other effects, like the `opacity(_:)` modifier used in the example above.

## Conforming Types

- [EmptyHoverEffectContent](/documentation/swiftui/emptyhovereffectcontent)
- [ModifiedContent](/documentation/swiftui/modifiedcontent)

## Instance Methods

- [animation(_:body:)](/documentation/swiftui/hovereffectcontent/animation(_:body:)) Applies the given  to all effects within the  closure.
- [clipShape(_:style:)](/documentation/swiftui/hovereffectcontent/clipshape(_:style:)) Sets a clipping shape for the view.
- [offset(_:)](/documentation/swiftui/hovereffectcontent/offset(_:)) Offsets the view by the horizontal and vertical amount specified in the offset parameter.
- [offset(x:y:)](/documentation/swiftui/hovereffectcontent/offset(x:y:)) Offsets the view by the specified horizontal and vertical distances.
- [opacity(_:)](/documentation/swiftui/hovereffectcontent/opacity(_:)) Sets the transparency of the view.
- [rotationEffect(_:anchor:)](/documentation/swiftui/hovereffectcontent/rotationeffect(_:anchor:)) Rotates content in two dimensions around the specified point.
- [scaleEffect(_:anchor:)](/documentation/swiftui/hovereffectcontent/scaleeffect(_:anchor:)) Scales the view’s rendered output by the given amount in both the horizontal and vertical directions, relative to an anchor point.
- [scaleEffect(x:y:anchor:)](/documentation/swiftui/hovereffectcontent/scaleeffect(x:y:anchor:)) Scales the view’s rendered output by the given horizontal and vertical amounts, relative to an anchor point.
- [transformEffect(_:)](/documentation/swiftui/hovereffectcontent/transformeffect(_:)) Applies an affine transformation to the view’s rendered output.

## Changing view appearance for hover events

- [hoverEffect(_:)](/documentation/swiftui/view/hovereffect(_:))
- [HoverEffect](/documentation/swiftui/hovereffect)
- [hoverEffect(_:in:isEnabled:)](/documentation/swiftui/view/hovereffect(_:in:isenabled:))
- [hoverEffect(in:isEnabled:body:)](/documentation/swiftui/view/hovereffect(in:isenabled:body:))
- [CustomHoverEffect](/documentation/swiftui/customhovereffect)
- [ContentHoverEffect](/documentation/swiftui/contenthovereffect)
- [HoverEffectGroup](/documentation/swiftui/hovereffectgroup)
- [hoverEffectGroup()](/documentation/swiftui/view/hovereffectgroup())
- [hoverEffectGroup(_:)](/documentation/swiftui/view/hovereffectgroup(_:))
- [hoverEffectGroup(id:in:behavior:)](/documentation/swiftui/view/hovereffectgroup(id:in:behavior:))
- [GroupHoverEffect](/documentation/swiftui/grouphovereffect)
- [EmptyHoverEffectContent](/documentation/swiftui/emptyhovereffectcontent)
- [handPointerBehavior(_:)](/documentation/swiftui/view/handpointerbehavior(_:))
- [HandPointerBehavior](/documentation/swiftui/handpointerbehavior)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
