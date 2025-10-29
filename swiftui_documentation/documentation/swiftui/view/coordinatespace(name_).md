---
title: coordinateSpace(name:)
description: Assigns a name to the view’s coordinate space, so other code can operate on dimensions like points and sizes relative to the named space.
source: https://developer.apple.com/documentation/swiftui/view/coordinatespace(name:)
timestamp: 2025-10-29T00:11:50.547Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# coordinateSpace(name:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Assigns a name to the view’s coordinate space, so other code can operate on dimensions like points and sizes relative to the named space.

```swift
nonisolated func coordinateSpace<T>(name: T) -> some View where T : Hashable
```

## Parameters

**name**

A name used to identify this coordinate space.



## Discussion

Use `coordinateSpace(name:)` to allow another function to find and operate on a view and operate on dimensions relative to that view.

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
        .coordinateSpace(name: "stack")
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



## Layout modifiers

- [frame()](/documentation/swiftui/view/frame())
- [edgesIgnoringSafeArea(_:)](/documentation/swiftui/view/edgesignoringsafearea(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
