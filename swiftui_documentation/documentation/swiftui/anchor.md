---
title: Anchor
description: An opaque value derived from an anchor source and a particular view.
source: https://developer.apple.com/documentation/swiftui/anchor
timestamp: 2025-10-29T00:12:13.893Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# Anchor

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> An opaque value derived from an anchor source and a particular view.

```swift
@frozen struct Anchor<Value>
```

## Overview

You can convert the anchor to a `Value` in the coordinate space of a target view by using a [Geometry Proxy](/documentation/swiftui/geometryproxy) to specify the target view.

## Conforms To

- [CoordinateSpaceValue3D](/documentation/Spatial/CoordinateSpaceValue3D)
- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting the anchor’s source

- [Anchor.Source](/documentation/swiftui/anchor/source) A type-erased geometry value that produces an anchored value of a given type.

## Accessing geometric constructs

- [Axis](/documentation/swiftui/axis)
- [Angle](/documentation/swiftui/angle)
- [UnitPoint](/documentation/swiftui/unitpoint)
- [UnitPoint3D](/documentation/swiftui/unitpoint3d)
- [DepthAlignmentID](/documentation/swiftui/depthalignmentid)
- [Alignment3D](/documentation/swiftui/alignment3d)
- [GeometryProxyCoordinateSpace3D](/documentation/swiftui/geometryproxycoordinatespace3d)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
