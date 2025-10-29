---
title: GeometryReader3D
description: A container view that defines its content as a function of its own size and coordinate space.
source: https://developer.apple.com/documentation/swiftui/geometryreader3d
timestamp: 2025-10-29T00:09:50.959Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# GeometryReader3D

**Available on:** visionOS 1.0+

> A container view that defines its content as a function of its own size and coordinate space.

```swift
@frozen struct GeometryReader3D<Content> where Content : View
```

## Overview

This view returns a flexible preferred size to its own container view.

This container differs from [Geometry Reader](/documentation/swiftui/geometryreader) in that it also reads available depth, and thus also returns a flexible preferred depth to its parent layout. Use the 3D version only in situations where you need to read depth, because it affects depth layout when used in a container like a [ZStack](/documentation/swiftui/zstack).

## Conforms To

- [View](/documentation/swiftui/view)

## Creating a geometry reader

- [init(content:)](/documentation/swiftui/geometryreader3d/init(content:))
- [content](/documentation/swiftui/geometryreader3d/content)

## Measuring a view

- [GeometryReader](/documentation/swiftui/geometryreader)
- [GeometryProxy](/documentation/swiftui/geometryproxy)
- [GeometryProxy3D](/documentation/swiftui/geometryproxy3d)
- [coordinateSpace(_:)](/documentation/swiftui/view/coordinatespace(_:))
- [CoordinateSpace](/documentation/swiftui/coordinatespace)
- [CoordinateSpaceProtocol](/documentation/swiftui/coordinatespaceprotocol)
- [PhysicalMetric](/documentation/swiftui/physicalmetric)
- [PhysicalMetricsConverter](/documentation/swiftui/physicalmetricsconverter)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
