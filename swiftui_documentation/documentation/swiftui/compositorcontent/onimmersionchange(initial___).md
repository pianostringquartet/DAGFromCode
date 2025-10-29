---
title: onImmersionChange(initial:_:)
description: Performs an action when the immersion state of your app changes.
source: https://developer.apple.com/documentation/swiftui/compositorcontent/onimmersionchange(initial:_:)
timestamp: 2025-10-29T00:11:49.231Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [compositorcontent](/documentation/swiftui/compositorcontent)

**Instance Method**

# onImmersionChange(initial:_:)

**Available on:** macOS 26.0+, visionOS 26.0+

> Performs an action when the immersion state of your app changes.

```swift
nonisolated func onImmersionChange(initial: Bool = true, _ action: @escaping (ImmersionChangeContext, ImmersionChangeContext) -> Void) -> some CompositorContent
```

## Parameters

**initial**

Whether the action should be run when this view initially appears.



**action**

A closure to run when the immersion changes.



## Discussion

Depending on the immersion style used for the Immersive Space in your app, the amount of immersion can be controlled by actions such as turning the Digital Crown. Use this modifier to define a closure that is run when the immersion state changes.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
