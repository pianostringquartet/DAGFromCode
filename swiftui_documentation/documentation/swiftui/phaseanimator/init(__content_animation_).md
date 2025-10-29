---
title: init(_:content:animation:)
description: Cycles through a sequence of phases continuously, animating updates to a view on each phase change.
source: https://developer.apple.com/documentation/swiftui/phaseanimator/init(_:content:animation:)
timestamp: 2025-10-29T00:13:18.605Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [phaseanimator](/documentation/swiftui/phaseanimator)

**Initializer**

# init(_:content:animation:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Cycles through a sequence of phases continuously, animating updates to a view on each phase change.

```swift
init(_ phases: some Sequence<Phase>, @ViewBuilder content: @escaping (Phase) -> Content, animation: @escaping (Phase) -> Animation? = { _ in .default })
```

## Parameters

**phases**

The sequence of phases to cycle through. Ensure that the sequence isn’t empty. If it is, SwiftUI logs a runtime warning and also returns a visual warning as the output view.



**content**

A view builder closure that takes the current phase as an input. Return a view that’s based on the current phase.



**animation**

A closure that takes the current phase as input. Return the animation to use when transitioning to the next phase. If you return `nil`, the transition doesn’t animate. If you don’t set this parameter, SwiftUI uses a default animation.



## Discussion

When the phase animator first appears, this initializer renders the `content` closure using the first phase as input to the closure. The animator then begins immediately animating to the view produced by sending the second phase to the `content` closure using the animation returned from the `animation` closure. This procedure repeats for successive phases until reaching the last phase, after which the animator loops back to the first phase again.

## Creating a phase animator

- [init(_:trigger:content:animation:)](/documentation/swiftui/phaseanimator/init(_:trigger:content:animation:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
