---
title: GeometryProxy
description: A proxy for access to the size and coordinate space (for anchor resolution) of the container view.
source: https://developer.apple.com/documentation/swiftui/geometryproxy
timestamp: 2025-10-29T00:14:17.935Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# GeometryProxy

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A proxy for access to the size and coordinate space (for anchor resolution) of the container view.

```swift
struct GeometryProxy
```

## Accessing geometry characteristics

- [bounds(of:)](/documentation/swiftui/geometryproxy/bounds(of:)) Returns the given coordinate space’s bounds rectangle, converted to the local coordinate space.
- [frame(in:)](/documentation/swiftui/geometryproxy/frame(in:)) Returns the container view’s bounds rectangle, converted to a defined coordinate space.
- [size](/documentation/swiftui/geometryproxy/size) The size of the container view.
- [safeAreaInsets](/documentation/swiftui/geometryproxy/safeareainsets) The safe area inset of the container view.
- [subscript(_:)](/documentation/swiftui/geometryproxy/subscript(_:)) Resolves the value of an anchor to the container view.
- [transform(in:)](/documentation/swiftui/geometryproxy/transform(in:)) The container view’s 3D transform converted to a defined coordinate space.

## Instance Properties

- [containerCornerInsets](/documentation/swiftui/geometryproxy/containercornerinsets) Returns the corner insets of the container view. Use this value to adjust the geometry of a view based on the overlapping corner insets of the container view. Corner insets may include pieces of system UI as well as the corner radii for windows and presentations.

## Measuring a view

- [GeometryReader](/documentation/swiftui/geometryreader)
- [GeometryReader3D](/documentation/swiftui/geometryreader3d)
- [GeometryProxy3D](/documentation/swiftui/geometryproxy3d)
- [coordinateSpace(_:)](/documentation/swiftui/view/coordinatespace(_:))
- [CoordinateSpace](/documentation/swiftui/coordinatespace)
- [CoordinateSpaceProtocol](/documentation/swiftui/coordinatespaceprotocol)
- [PhysicalMetric](/documentation/swiftui/physicalmetric)
- [PhysicalMetricsConverter](/documentation/swiftui/physicalmetricsconverter)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
