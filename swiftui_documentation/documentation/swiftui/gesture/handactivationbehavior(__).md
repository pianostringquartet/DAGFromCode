---
title: handActivationBehavior(_:)
description: Customizes the activation behavior for a gesture when driven by hand or hand-like input.
source: https://developer.apple.com/documentation/swiftui/gesture/handactivationbehavior(_:)
timestamp: 2025-10-29T00:12:11.833Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [gesture](/documentation/swiftui/gesture)

**Instance Method**

# handActivationBehavior(_:)

**Available on:** visionOS 1.0+

> Customizes the activation behavior for a gesture when driven by hand or hand-like input.

```swift
@MainActor @preconcurrency func handActivationBehavior(_ behavior: HandActivationBehavior) -> some Gesture<Self.Value>
```

## Parameters

**behavior**

The hand activation behavior to use for the gesture.



## Return Value

A new gesture with a preference to activate with the provided behavior.

## Discussion

Use [automatic](/documentation/swiftui/handactivationbehavior/automatic) to allow a gesture to activate with default system behaviors. Use [pinch](/documentation/swiftui/handactivationbehavior/pinch) when a gesture should only trigger when the hand is pinched.

For example, in a 3D chess application, a [Drag Gesture](/documentation/swiftui/draggesture) that enables movement of the pieces could use the pinch behavior to ensure that piece movement is only possible when a hand is pinched in order to avoid pushing the piece around by only touching it:

```swift
Model3D(named: "Pawn")
    .gesture(
        DragGesture()
            .handActivationBehavior(.pinch)
            .updating($chessDragState) { value, state, _ in
                // ...
            }
    )
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
