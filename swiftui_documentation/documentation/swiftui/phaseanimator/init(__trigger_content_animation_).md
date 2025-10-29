---
title: init(_:trigger:content:animation:)
description: Cycles through a sequence of phases in response to changes in a specified value, animating updates to a view on each phase change.
source: https://developer.apple.com/documentation/swiftui/phaseanimator/init(_:trigger:content:animation:)
timestamp: 2025-10-29T00:11:20.728Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [phaseanimator](/documentation/swiftui/phaseanimator)

**Initializer**

# init(_:trigger:content:animation:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Cycles through a sequence of phases in response to changes in a specified value, animating updates to a view on each phase change.

```swift
init(_ phases: some Sequence<Phase>, trigger: some Equatable, @ViewBuilder content: @escaping (Phase) -> Content, animation: @escaping (Phase) -> Animation? = { _ in .default })
```

## Parameters

**phases**

The sequence of phases to cycle through. Ensure that the sequence isn’t empty. If it is, SwiftUI logs a runtime warning and also returns a visual warning as the output view.



**trigger**

A value whose changes cause the animator to use the next phase.



**content**

A view builder closure that takes the current phase as an input. Return a view that’s based on the phase input.



**animation**

A closure that takes the current phase as input. Return the animation to use when transitioning to the next phase. If you return `nil`, the transition doesn’t animate. If you don’t set this parameter, SwiftUI uses a default animation.



## Discussion

When the phase animator first appears, this initializer renders the `content` closure using the first phase as input to the closure. When the value of the `trigger` input changes, the animator reevaluates the `content` closure using the value from the second phase and animates the change. This procedure repeats with each successive phase until reaching the last phase, at which point the animator loops back to the first phase.

## Creating a phase animator

- [init(_:content:animation:)](/documentation/swiftui/phaseanimator/init(_:content:animation:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
