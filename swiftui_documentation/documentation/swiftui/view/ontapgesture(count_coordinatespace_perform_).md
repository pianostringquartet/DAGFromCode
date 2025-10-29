---
title: onTapGesture(count:coordinateSpace:perform:)
description: Adds an action to perform when this view recognizes a tap gesture, and provides the action with the location of the interaction.
source: https://developer.apple.com/documentation/swiftui/view/ontapgesture(count:coordinatespace:perform:)
timestamp: 2025-10-29T00:12:30.288Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onTapGesture(count:coordinateSpace:perform:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+, watchOS 10.0+

> Adds an action to perform when this view recognizes a tap gesture, and provides the action with the location of the interaction.

```swift
nonisolated func onTapGesture(count: Int = 1, coordinateSpace: some CoordinateSpaceProtocol = .local, perform action: @escaping (CGPoint) -> Void) -> some View
```

## Parameters

**count**

The number of taps or clicks required to trigger the action closure provided in `action`. Defaults to `1`.



**coordinateSpace**

The coordinate space in which to receive location values. Defaults to [local](/documentation/swiftui/coordinatespace/local).



**action**

The action to perform. This closure receives an input that indicates where the interaction occurred.



## Discussion

Use this method to perform the specified `action` when the user clicks or taps on the modified view `count` times. The action closure receives the location of the interaction.

> [!NOTE]
> If you create a control that’s functionally equivalent to a [Button](/documentation/swiftui/button), use [Button Style](/documentation/swiftui/buttonstyle) to create a customized button instead.

The following code adds a tap gesture to a [Circle](/documentation/swiftui/circle) that toggles the color of the circle based on the tap location.

```swift
struct TapGestureExample: View {
    @State private var location: CGPoint = .zero

    var body: some View {
        Circle()
            .fill(self.location.y > 50 ? Color.blue : Color.red)
            .frame(width: 100, height: 100, alignment: .center)
            .onTapGesture { location in
                self.location = location
            }
    }
}
```

## Recognizing tap gestures

- [onTapGesture(count:perform:)](/documentation/swiftui/view/ontapgesture(count:perform:))
- [TapGesture](/documentation/swiftui/tapgesture)
- [SpatialTapGesture](/documentation/swiftui/spatialtapgesture)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
