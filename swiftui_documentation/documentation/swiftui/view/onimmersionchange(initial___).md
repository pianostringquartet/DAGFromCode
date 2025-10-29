---
title: onImmersionChange(initial:_:)
description: Performs an action when the immersion state of your app changes.
source: https://developer.apple.com/documentation/swiftui/view/onimmersionchange(initial:_:)
timestamp: 2025-10-29T00:15:24.487Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onImmersionChange(initial:_:)

**Available on:** visionOS 2.0+

> Performs an action when the immersion state of your app changes.

```swift
nonisolated func onImmersionChange(initial: Bool = true, _ action: @escaping (ImmersionChangeContext, ImmersionChangeContext) -> Void) -> some View
```

## Parameters

**initial**

Whether the action should be run when this view initially appears.



**action**

A closure to run when the immersion changes.



## Discussion

Depending on the immersion style used for the Immersive Space in your app, the amount of immersion can be controlled by actions such as turning the Digital Crown. Use this modifier to define a closure that is run when the immersion state changes. The following example sets the value of a binding depending on the current amount of immersion:

```swift
struct ImmersiveView: View {
    @Binding var enableSoundEffects: Bool

    var body: some View {
        MyView()
            .onImmersionChange { _, newImmersion in
                guard let amount = newImmersion.amount else {
                    enableSoundEffects = false
                    return
                }
                // Enable some effects based on the updated
                // amount of immersion
                enableSoundEffects = amount > 0.5
            }
    }
}
```

## Responding to immersion changes

- [ImmersionChangeContext](/documentation/swiftui/immersionchangecontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
