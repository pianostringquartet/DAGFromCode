---
title: GeometryProxy3D
description: A proxy for access to the size and coordinate space of the container view.
source: https://developer.apple.com/documentation/swiftui/geometryproxy3d
timestamp: 2025-10-29T00:14:54.069Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# GeometryProxy3D

**Available on:** visionOS 1.0+

> A proxy for access to the size and coordinate space of the container view.

```swift
struct GeometryProxy3D
```

## Overview

You can use a proxy for anchor resolution.

## Accessing geometry characteristics

- [frame(in:)](/documentation/swiftui/geometryproxy3d/frame(in:)) The container view’s bounds rectangle converted to a defined coordinate space.
- [size](/documentation/swiftui/geometryproxy3d/size) The size of the container view.
- [safeAreaInsets](/documentation/swiftui/geometryproxy3d/safeareainsets) The safe area inset of the container view.
- [subscript(_:)](/documentation/swiftui/geometryproxy3d/subscript(_:)) Resolves the value of an anchor to the container view.
- [transform(in:)](/documentation/swiftui/geometryproxy3d/transform(in:)) The container view’s 3D transform converted to a defined coordinate space.

## Instance Methods

- [coordinateSpace3D(for:)](/documentation/swiftui/geometryproxy3d/coordinatespace3d(for:)) Returns a value that can be used for  based coordinate conversions.

## Measuring a view

- [GeometryReader](/documentation/swiftui/geometryreader)
- [GeometryReader3D](/documentation/swiftui/geometryreader3d)
- [GeometryProxy](/documentation/swiftui/geometryproxy)
- [coordinateSpace(_:)](/documentation/swiftui/view/coordinatespace(_:))
- [CoordinateSpace](/documentation/swiftui/coordinatespace)
- [CoordinateSpaceProtocol](/documentation/swiftui/coordinatespaceprotocol)
- [PhysicalMetric](/documentation/swiftui/physicalmetric)
- [PhysicalMetricsConverter](/documentation/swiftui/physicalmetricsconverter)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
