---
title: manipulationGesture(updating:coordinateSpace:operations:inertia:isEnabled:onChanged:)
description: Adds a manipulation gesture to this view without allowing this view to be manipulable itself.
source: https://developer.apple.com/documentation/swiftui/view/manipulationgesture(updating:coordinatespace:operations:inertia:isenabled:onchanged:)
timestamp: 2025-10-29T00:12:59.104Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# manipulationGesture(updating:coordinateSpace:operations:inertia:isEnabled:onChanged:)

**Available on:** visionOS 26.0+

> Adds a manipulation gesture to this view without allowing this view to be manipulable itself.

```swift
nonisolated func manipulationGesture(updating gestureState: Binding<Manipulable.GestureState>, coordinateSpace: some CoordinateSpaceProtocol = .local, operations: Manipulable.Operation.Set = .all, inertia: Manipulable.Inertia = .medium, isEnabled: Bool = true, onChanged: ((Manipulable.Event) -> Void)? = nil) -> some View
```

## Parameters

**gestureState**

The state that the manipulation gesture updates.



**coordinateSpace**

The coordinate space of the manipulation gesture event locations.



**operations**

The set of allowed operations that can be applied when a person manipulates this view.



**inertia**

The inertia of this view that defines how much it resists being manipulated.



**isEnabled**

The Boolean value that indicates whether the manipulation gesture added by this view modifier is enabled or not.



**onChanged**

The action to perform with each new manipulation gesture event.



## Return Value

A view with a manipulation gesture attached but that isn’t manipulable itself.

## Discussion

Use this view modifier alongside [manipulable(using:)](/documentation/swiftui/view/manipulable(using:)) when you want to allow a person to manipulate a view by interacting with a different view.

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
> [manipulable(using:)](/documentation/swiftui/view/manipulable(using:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
