---
title: manipulable(using:)
description: Allows the view to be manipulated using a manipulation gesture attached to a different view.
source: https://developer.apple.com/documentation/swiftui/view/manipulable(using:)
timestamp: 2025-10-29T00:10:20.193Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# manipulable(using:)

**Available on:** visionOS 26.0+

> Allows the view to be manipulated using a manipulation gesture attached to a different view.

```swift
nonisolated func manipulable(using gestureState: Manipulable.GestureState) -> some View
```

## Parameters

**gestureState**

The manipulation gesture state that’s updated by a manipulation gesture added to a different view.



## Return Value

A view that can be manipulated by a manipulation gesture attached to a different view.

## Discussion

Use this view modifier alongside [manipulationGesture(updating:coordinateSpace:operations:inertia:isEnabled:onChanged:)](/documentation/swiftui/view/manipulationgesture(updating:coordinatespace:operations:inertia:isenabled:onchanged:)) when you want to allow a person to manipulate a view by interacting with a different view.

In the following example, a person can begin a manipulation gesture attached to a deck of cards which, in turn, manipulates a single card instead of the entire deck:

```swift
struct CardDeck: View {
    @State private var manipulationState = Manipulable.GestureState()

    var body: some View {
        ZStack {
            Model3D(named: "CardDeck")
                .manipulationGesture(updating: $manipulationState)
            Model3D(named: "Card")
                .manipulable(using: manipulationState)
                .opacity(manipulationState.isActive ? 1 : 0)
        }
    }
}
```

> [!NOTE]
> [manipulationGesture(updating:coordinateSpace:operations:inertia:isEnabled:onChanged:)](/documentation/swiftui/view/manipulationgesture(updating:coordinatespace:operations:inertia:isenabled:onchanged:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
