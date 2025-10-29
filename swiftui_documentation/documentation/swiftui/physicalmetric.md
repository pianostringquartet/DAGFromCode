---
title: PhysicalMetric
description: Provides access to a value in points that corresponds to the specified physical measurement.
source: https://developer.apple.com/documentation/swiftui/physicalmetric
timestamp: 2025-10-29T00:13:00.648Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# PhysicalMetric

**Available on:** visionOS 1.0+

> Provides access to a value in points that corresponds to the specified physical measurement.

```swift
@propertyWrapper @frozen struct PhysicalMetric<Value>
```

## Overview

Use this property wrapper inside a [View](/documentation/swiftui/view) or a type that inherits a `View`’s environment, like a [View Modifier](/documentation/swiftui/viewmodifier). Its value will be the equivalent in points of the physical measurement of length you specify.

For example, to have a variable that contains the amount of points corresponding to one meter, you can do the following:

```swift
struct MyView: View {
    @PhysicalMetric(from: .meters)
    var twoAndAHalfMeters = 2.5
    …
}
```

Using this wrapper for a property of a type not associated with a scene’s view contents, like an  [App](/documentation/swiftui/app) or a [Scene](/documentation/swiftui/scene), is unsupported.

## Compensating for World Scaling

Starting with apps built against the visionOS 2.0 SDK, the default behavior of `PhysicalMetric` is to produce values that match the distances used by `RealityView`s in the same scene, by scaling its returned values to match the world scaling of the current scene. Previously, the values were not scaled, and they were suitable for measuring distances and lengths within the user’s surroundings, outside of any scene. Unscaled values could produce unexpected behavior if used in conjunction with `RealityView`s within the scene.

To modify the behavior of `PhysicalMetric` and obtain unscaled values, use the [transformEnvironment(_:transform:)](/documentation/swiftui/view/transformenvironment(_:transform:)) modifier, transforming the [physical Metrics](/documentation/swiftui/environmentvalues/physicalmetrics) key path, to edit the converter used by `PhysicalMetric` within the modified views to use a new [World Scaling Compensation](/documentation/swiftui/worldscalingcompensation) mode. For example:

```swift
struct RulerView: View {
    @PhysicalMetric(from: .meters)
    var oneMeter = 1

    var body: some View {
        /* implement a size-accurate ruler */
    }
}

struct ContentView: View {
    var body: some View {
        RulerView()
            .transformEnvironment(\.physicalMetrics) { metrics in
                metrics = metrics.worldScalingCompensation(.unscaled)
            }
    }
}
```

> [!NOTE]
> [Physical Metrics Converter](/documentation/swiftui/physicalmetricsconverter)

> [!NOTE]
> [World Scaling Compensation](/documentation/swiftui/worldscalingcompensation)

## Conforms To

- [DynamicProperty](/documentation/swiftui/dynamicproperty)

## Creating a metric

- [init(wrappedValue:from:)](/documentation/swiftui/physicalmetric/init(wrappedvalue:from:)) Creates a value that maps the specified point, whose dimensions are specified in physical length measurements in the given unit, to the corresponding value in points in the associated scene.

## Getting the value

- [wrappedValue](/documentation/swiftui/physicalmetric/wrappedvalue) A value in points in the coordinate system of the associated scene.

## Measuring a view

- [GeometryReader](/documentation/swiftui/geometryreader)
- [GeometryReader3D](/documentation/swiftui/geometryreader3d)
- [GeometryProxy](/documentation/swiftui/geometryproxy)
- [GeometryProxy3D](/documentation/swiftui/geometryproxy3d)
- [coordinateSpace(_:)](/documentation/swiftui/view/coordinatespace(_:))
- [CoordinateSpace](/documentation/swiftui/coordinatespace)
- [CoordinateSpaceProtocol](/documentation/swiftui/coordinatespaceprotocol)
- [PhysicalMetricsConverter](/documentation/swiftui/physicalmetricsconverter)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
