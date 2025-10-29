---
title: MatchedGeometryProperties
description: A set of view properties that may be synchronized between views using the  function.
source: https://developer.apple.com/documentation/swiftui/matchedgeometryproperties
timestamp: 2025-10-29T00:10:12.467Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# MatchedGeometryProperties

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A set of view properties that may be synchronized between views using the  function.

```swift
@frozen struct MatchedGeometryProperties
```

## Conforms To

- [BitwiseCopyable](/documentation/Swift/BitwiseCopyable)
- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [ExpressibleByArrayLiteral](/documentation/Swift/ExpressibleByArrayLiteral)
- [OptionSet](/documentation/Swift/OptionSet)
- [RawRepresentable](/documentation/Swift/RawRepresentable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [SetAlgebra](/documentation/Swift/SetAlgebra)

## Matching properties

- [frame](/documentation/swiftui/matchedgeometryproperties/frame) Both the  and  properties.
- [position](/documentation/swiftui/matchedgeometryproperties/position) The view’s position, in window coordinates.
- [size](/documentation/swiftui/matchedgeometryproperties/size) The view’s size, in local coordinates.

## Synchronizing geometries

- [matchedGeometryEffect(id:in:properties:anchor:isSource:)](/documentation/swiftui/view/matchedgeometryeffect(id:in:properties:anchor:issource:))
- [GeometryEffect](/documentation/swiftui/geometryeffect)
- [Namespace](/documentation/swiftui/namespace)
- [geometryGroup()](/documentation/swiftui/view/geometrygroup())

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
