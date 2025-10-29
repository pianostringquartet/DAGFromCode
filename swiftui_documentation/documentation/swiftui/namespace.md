---
title: Namespace
description: A dynamic property type that allows access to a namespace defined by the persistent identity of the object containing the property (e.g. a view).
source: https://developer.apple.com/documentation/swiftui/namespace
timestamp: 2025-10-29T00:12:59.337Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# Namespace

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A dynamic property type that allows access to a namespace defined by the persistent identity of the object containing the property (e.g. a view).

```swift
@frozen @propertyWrapper struct Namespace
```

## Conforms To

- [BitwiseCopyable](/documentation/Swift/BitwiseCopyable)
- [Copyable](/documentation/Swift/Copyable)
- [DynamicProperty](/documentation/swiftui/dynamicproperty)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Creating a namespace

- [init()](/documentation/swiftui/namespace/init())

## Getting the namespace

- [wrappedValue](/documentation/swiftui/namespace/wrappedvalue)
- [Namespace.ID](/documentation/swiftui/namespace/id) A namespace defined by the persistent identity of an  dynamic property.

## Synchronizing geometries

- [matchedGeometryEffect(id:in:properties:anchor:isSource:)](/documentation/swiftui/view/matchedgeometryeffect(id:in:properties:anchor:issource:))
- [MatchedGeometryProperties](/documentation/swiftui/matchedgeometryproperties)
- [GeometryEffect](/documentation/swiftui/geometryeffect)
- [geometryGroup()](/documentation/swiftui/view/geometrygroup())

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
