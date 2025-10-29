---
title: manipulable(transform:coordinateSpace:operations:inertia:isEnabled:onChanged:)
description: Applies the given 3D affine transform to the view and allows it to be manipulated using common hand gestures.
source: https://developer.apple.com/documentation/swiftui/view/manipulable(transform:coordinatespace:operations:inertia:isenabled:onchanged:)
timestamp: 2025-10-29T00:12:50.191Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# manipulable(transform:coordinateSpace:operations:inertia:isEnabled:onChanged:)

**Available on:** visionOS 26.0+

> Applies the given 3D affine transform to the view and allows it to be manipulated using common hand gestures.

```swift
nonisolated func manipulable(transform: Binding<AffineTransform3D>, coordinateSpace: some CoordinateSpaceProtocol = .local, operations: Manipulable.Operation.Set = .all, inertia: Manipulable.Inertia = .medium, isEnabled: Bool = true, onChanged: ((Manipulable.Event) -> Void)? = nil) -> some View
```

## Parameters

**transform**

The binding to a 3D affine transform applied to the view and updated when a person is manipulating this view.



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

A view with a 3D affine transform applied and that can be manipulated using common hand gestures.

## Discussion

When a person ends the manipulation gesture, the view will maintain its transform but you may also modify it programmatically when the gesture is inactive.

In the following example, when a person ends manipulating the view, it will fade out and fade in again in its original location and unmodified transform:

```swift
struct FadeOutOnReleaseView: View {
    @State private var transform: AffineTransform3D = .identity
    @State private var opacity: CGFloat = 1

    var body: some View {
        Circle()
            .manipulable(transform: $transform) { event in
                switch event.phase {
                case .ended(let value):
                    withAnimation {
                        opacity = 0
                    } completion: {
                        transform = .identity
                        withAnimation { opacity = 1 }
                    }
                default:
                    break
                }
            }
            .opacity(opacity)
        }
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
