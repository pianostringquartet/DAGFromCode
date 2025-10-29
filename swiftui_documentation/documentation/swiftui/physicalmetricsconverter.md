---
title: PhysicalMetricsConverter
description: A physical metrics converter provides conversion between point values and their extent in 3D space, in the form of physical length measurements.
source: https://developer.apple.com/documentation/swiftui/physicalmetricsconverter
timestamp: 2025-10-29T00:15:17.641Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# PhysicalMetricsConverter

**Available on:** visionOS 1.0+

> A physical metrics converter provides conversion between point values and their extent in 3D space, in the form of physical length measurements.

```swift
@MainActor @preconcurrency struct PhysicalMetricsConverter
```

## Overview

Converters are available from the environment of a `View` or other type that inherits a `View`‘s environments, and are associated with the scene that contains that environment. The conversions expect (or emit) values in points in that scene’s coordinate system, and convert these to (or from) measurements of length in the user’s or scene’s reference frame.

To obtain a converter, use the [physical Metrics](/documentation/swiftui/environmentvalues/physicalmetrics) key:

```swift
struct MyView: View {
    @Environment(\.physicalMetrics) var physicalMetrics
    …
}
```

When user action modifies a scene so that measurements have changed (e.g., by changing its scale), the view that accessed that environment key and its hierarchy will be reevaluated.

Attempting to obtain a converter inside a type not associated with a scene’s contents (for example, from an [App](/documentation/swiftui/app) or [Scene](/documentation/swiftui/scene)’s environment) is not supported.

## Compensating for World Scaling

By default in apps linked against the visionOS 2.0 SDK or later, these conversions match the scene’s coordinate system, including any scale applied to it by the system. If you’re using meters as the unit, this will match the notion of meters in an unscaled `RealityView` in the same scene.

To obtain measurements that are accurate to the user’s surroundings, use the [worldScalingCompensation(_:)](/documentation/swiftui/physicalmetricsconverter/worldscalingcompensation(_:)) method to enable an appropriate compensation mode for the scale.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Converting a unit length

- [convert(_:from:)](/documentation/swiftui/physicalmetricsconverter/convert(_:from:)) Converts a length in the specified unit to a length in points suitable for use in the environment this converter is associated with.
- [convert(_:to:)](/documentation/swiftui/physicalmetricsconverter/convert(_:to:)) Converts a point’s coordinates to physical length measurements in the specified unit.

## Instance Properties

- [worldScalingCompensation](/documentation/swiftui/physicalmetricsconverter/worldscalingcompensation) Provides the current world scale compensation of this converter.

## Instance Methods

- [worldScalingCompensation(_:)](/documentation/swiftui/physicalmetricsconverter/worldscalingcompensation(_:)) Obtains a new converter with a different world scale compensation behavior.

## Measuring a view

- [GeometryReader](/documentation/swiftui/geometryreader)
- [GeometryReader3D](/documentation/swiftui/geometryreader3d)
- [GeometryProxy](/documentation/swiftui/geometryproxy)
- [GeometryProxy3D](/documentation/swiftui/geometryproxy3d)
- [coordinateSpace(_:)](/documentation/swiftui/view/coordinatespace(_:))
- [CoordinateSpace](/documentation/swiftui/coordinatespace)
- [CoordinateSpaceProtocol](/documentation/swiftui/coordinatespaceprotocol)
- [PhysicalMetric](/documentation/swiftui/physicalmetric)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
