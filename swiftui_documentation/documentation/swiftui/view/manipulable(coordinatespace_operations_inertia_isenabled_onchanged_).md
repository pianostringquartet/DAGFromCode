---
title: manipulable(coordinateSpace:operations:inertia:isEnabled:onChanged:)
description: Allows this view to be manipulated using common hand gestures.
source: https://developer.apple.com/documentation/swiftui/view/manipulable(coordinatespace:operations:inertia:isenabled:onchanged:)
timestamp: 2025-10-29T00:14:30.361Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# manipulable(coordinateSpace:operations:inertia:isEnabled:onChanged:)

**Available on:** visionOS 26.0+

> Allows this view to be manipulated using common hand gestures.

```swift
nonisolated func manipulable(coordinateSpace: some CoordinateSpaceProtocol = .local, operations: Manipulable.Operation.Set = .all, inertia: Manipulable.Inertia = .medium, isEnabled: Bool = true, onChanged: ((Manipulable.Event) -> Void)? = nil) -> some View
```

## Parameters

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

A view that can be manipulated using common hand gestures.

## Discussion

When a person ends the manipulation gesture, the view will return to its initial transform from before the gesture began.

```swift
Model3D(named: "ToyRocket")
    .manipulable()
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
