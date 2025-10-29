---
title: coordinateSpace(_:)
description: Assigns a name to the view’s coordinate space, so other code can operate on dimensions like points and sizes relative to the named space.
source: https://developer.apple.com/documentation/swiftui/view/coordinatespace(_:)
timestamp: 2025-10-29T00:10:12.610Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# coordinateSpace(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Assigns a name to the view’s coordinate space, so other code can operate on dimensions like points and sizes relative to the named space.

```swift
nonisolated func coordinateSpace(_ name: NamedCoordinateSpace) -> some View
```

## Parameters

**name**

A name used to identify this coordinate space.



## Discussion

Use `coordinateSpace(_:)` to allow another function to find and operate on a view and operate on dimensions relative to that view.

The example below demonstrates how a nested view can find and operate on its enclosing view’s coordinate space:

```swift
struct ContentView: View {
    @State private var location = CGPoint.zero

    var body: some View {
        VStack {
            Color.red.frame(width: 100, height: 100)
                .overlay(circle)
            Text("Location: \(Int(location.x)), \(Int(location.y))")
        }
        .coordinateSpace(.named("stack"))
    }

    var circle: some View {
        Circle()
            .frame(width: 25, height: 25)
            .gesture(drag)
            .padding(5)
    }

    var drag: some Gesture {
        DragGesture(coordinateSpace: .named("stack"))
            .onChanged { info in location = info.location }
    }
}
```

Here, the [VStack](/documentation/swiftui/vstack) in the `ContentView` named “stack” is composed of a red frame with a custom [Circle](/documentation/swiftui/circle) view [overlay(_:alignment:)](/documentation/swiftui/view/overlay(_:alignment:)) at its center.

The `circle` view has an attached [Drag Gesture](/documentation/swiftui/draggesture) that targets the enclosing VStack’s coordinate space. As the gesture recognizer’s closure registers events inside `circle` it stores them in the shared `location` state variable and the [VStack](/documentation/swiftui/vstack) displays the coordinates in a [Text](/documentation/swiftui/text) view.



## Measuring a view

- [GeometryReader](/documentation/swiftui/geometryreader)
- [GeometryReader3D](/documentation/swiftui/geometryreader3d)
- [GeometryProxy](/documentation/swiftui/geometryproxy)
- [GeometryProxy3D](/documentation/swiftui/geometryproxy3d)
- [CoordinateSpace](/documentation/swiftui/coordinatespace)
- [CoordinateSpaceProtocol](/documentation/swiftui/coordinatespaceprotocol)
- [PhysicalMetric](/documentation/swiftui/physicalmetric)
- [PhysicalMetricsConverter](/documentation/swiftui/physicalmetricsconverter)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
