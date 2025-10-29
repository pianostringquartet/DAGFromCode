---
title: CoordinateSpace
description: A resolved coordinate space created by the coordinate space protocol.
source: https://developer.apple.com/documentation/swiftui/coordinatespace
timestamp: 2025-10-29T00:12:35.618Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Enumeration**

# CoordinateSpace

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A resolved coordinate space created by the coordinate space protocol.

```swift
enum CoordinateSpace
```

## Overview

You don’t typically use `CoordinateSpace` directly. Instead, use the static properties and functions of `CoordinateSpaceProtocol` such as `.global`, `.local`, and `.named(_:)`.

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)

## Getting coordinate spaces

- [CoordinateSpace.global](/documentation/swiftui/coordinatespace/global) The global coordinate space at the root of the view hierarchy.
- [CoordinateSpace.local](/documentation/swiftui/coordinatespace/local) The local coordinate space of the current view.
- [CoordinateSpace.named(_:)](/documentation/swiftui/coordinatespace/named(_:)) A named reference to a view’s local coordinate space.

## Testing a space

- [isGlobal](/documentation/swiftui/coordinatespace/isglobal)
- [isLocal](/documentation/swiftui/coordinatespace/islocal)

## Measuring a view

- [GeometryReader](/documentation/swiftui/geometryreader)
- [GeometryReader3D](/documentation/swiftui/geometryreader3d)
- [GeometryProxy](/documentation/swiftui/geometryproxy)
- [GeometryProxy3D](/documentation/swiftui/geometryproxy3d)
- [coordinateSpace(_:)](/documentation/swiftui/view/coordinatespace(_:))
- [CoordinateSpaceProtocol](/documentation/swiftui/coordinatespaceprotocol)
- [PhysicalMetric](/documentation/swiftui/physicalmetric)
- [PhysicalMetricsConverter](/documentation/swiftui/physicalmetricsconverter)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
