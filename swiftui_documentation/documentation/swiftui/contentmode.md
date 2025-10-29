---
title: ContentMode
description: Constants that define how a view’s content fills the available space.
source: https://developer.apple.com/documentation/swiftui/contentmode
timestamp: 2025-10-29T00:10:17.224Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Enumeration**

# ContentMode

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Constants that define how a view’s content fills the available space.

```swift
@frozen enum ContentMode
```

## Conforms To

- [BitwiseCopyable](/documentation/Swift/BitwiseCopyable)
- [CaseIterable](/documentation/Swift/CaseIterable)
- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting content modes

- [ContentMode.fill](/documentation/swiftui/contentmode/fill) An option that resizes the content so it occupies all available space, both vertically and horizontally.
- [ContentMode.fit](/documentation/swiftui/contentmode/fit) An option that resizes the content so it’s all within the available space, both vertically and horizontally.

## Scaling, rotating, or transforming a view

- [scaledToFill()](/documentation/swiftui/view/scaledtofill())
- [scaledToFit()](/documentation/swiftui/view/scaledtofit())
- [scaleEffect(_:anchor:)](/documentation/swiftui/view/scaleeffect(_:anchor:))
- [scaleEffect(x:y:anchor:)](/documentation/swiftui/view/scaleeffect(x:y:anchor:))
- [scaleEffect(x:y:z:anchor:)](/documentation/swiftui/view/scaleeffect(x:y:z:anchor:))
- [aspectRatio(_:contentMode:)](/documentation/swiftui/view/aspectratio(_:contentmode:))
- [rotationEffect(_:anchor:)](/documentation/swiftui/view/rotationeffect(_:anchor:))
- [rotation3DEffect(_:axis:anchor:anchorZ:perspective:)](/documentation/swiftui/view/rotation3deffect(_:axis:anchor:anchorz:perspective:))
- [perspectiveRotationEffect(_:axis:anchor:anchorZ:perspective:)](/documentation/swiftui/view/perspectiverotationeffect(_:axis:anchor:anchorz:perspective:))
- [rotation3DEffect(_:anchor:)](/documentation/swiftui/view/rotation3deffect(_:anchor:))
- [rotation3DEffect(_:axis:anchor:)](/documentation/swiftui/view/rotation3deffect(_:axis:anchor:))
- [transformEffect(_:)](/documentation/swiftui/view/transformeffect(_:))
- [transform3DEffect(_:)](/documentation/swiftui/view/transform3deffect(_:))
- [projectionEffect(_:)](/documentation/swiftui/view/projectioneffect(_:))
- [ProjectionTransform](/documentation/swiftui/projectiontransform)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
