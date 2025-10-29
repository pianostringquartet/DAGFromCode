---
title: CoordinateSpaceProtocol
description: A frame of reference within the layout system.
source: https://developer.apple.com/documentation/swiftui/coordinatespaceprotocol
timestamp: 2025-10-29T00:13:01.746Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# CoordinateSpaceProtocol

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A frame of reference within the layout system.

```swift
protocol CoordinateSpaceProtocol
```

## Overview

All geometric properties of a view, including size, position, and transform, are defined within the local coordinate space of the view’s parent. These values can be converted into other coordinate spaces by passing types conforming to this protocol into functions such as `GeometryProxy.frame(in:)`.

For example, a named coordinate space allows you to convert the frame of a view into the local coordinate space of an ancestor view by defining a named coordinate space using the `coordinateSpace(_:)` modifier, then passing that same named coordinate space into the `frame(in:)` function.

```swift
VStack {
    GeometryReader { geometryProxy in
        let distanceFromTop = geometryProxy.frame(in: "container").origin.y
        Text("This view is \(distanceFromTop) points from the top of the VStack")
    }
    .padding()
}
.coordinateSpace(.named("container"))
```

You don’t typically create types conforming to this protocol yourself. Instead, use the system-provided `.global`, `.local`, and `.named(_:)` implementations.

## Conforming Types

- [GlobalCoordinateSpace](/documentation/swiftui/globalcoordinatespace)
- [LocalCoordinateSpace](/documentation/swiftui/localcoordinatespace)
- [NamedCoordinateSpace](/documentation/swiftui/namedcoordinatespace)

## Getting built-in coordinate spaces

- [immersiveSpace](/documentation/swiftui/coordinatespaceprotocol/immersivespace) The named coordinate space that represents the currently opened  scene. If no immersive space is currently opened, this CoordinateSpace provides the same behavior as the  coordinate space.
- [global](/documentation/swiftui/coordinatespaceprotocol/global) The global coordinate space at the root of the view hierarchy.
- [local](/documentation/swiftui/coordinatespaceprotocol/local) The local coordinate space of the current view.
- [named(_:)](/documentation/swiftui/coordinatespaceprotocol/named(_:)) Creates a named coordinate space using the given value.
- [scrollView](/documentation/swiftui/coordinatespaceprotocol/scrollview) The named coordinate space that is added by the system for the innermost containing scroll view.
- [scrollView(axis:)](/documentation/swiftui/coordinatespaceprotocol/scrollview(axis:)) The named coordinate space that is added by the system for the innermost containing scroll view that allows scrolling along the provided axis.

## Getting the resolved coordinate space

- [coordinateSpace](/documentation/swiftui/coordinatespaceprotocol/coordinatespace) The resolved coordinate space.

## Supporting types

- [GlobalCoordinateSpace](/documentation/swiftui/globalcoordinatespace) The global coordinate space at the root of the view hierarchy.
- [LocalCoordinateSpace](/documentation/swiftui/localcoordinatespace) The local coordinate space of the current view.
- [NamedCoordinateSpace](/documentation/swiftui/namedcoordinatespace) A named coordinate space.

## Measuring a view

- [GeometryReader](/documentation/swiftui/geometryreader)
- [GeometryReader3D](/documentation/swiftui/geometryreader3d)
- [GeometryProxy](/documentation/swiftui/geometryproxy)
- [GeometryProxy3D](/documentation/swiftui/geometryproxy3d)
- [coordinateSpace(_:)](/documentation/swiftui/view/coordinatespace(_:))
- [CoordinateSpace](/documentation/swiftui/coordinatespace)
- [PhysicalMetric](/documentation/swiftui/physicalmetric)
- [PhysicalMetricsConverter](/documentation/swiftui/physicalmetricsconverter)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
