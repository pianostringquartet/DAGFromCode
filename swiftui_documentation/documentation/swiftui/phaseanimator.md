---
title: PhaseAnimator
description: A container that animates its content by automatically cycling through a collection of phases that you provide, each defining a discrete step within an animation.
source: https://developer.apple.com/documentation/swiftui/phaseanimator
timestamp: 2025-10-29T00:14:56.528Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# PhaseAnimator

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A container that animates its content by automatically cycling through a collection of phases that you provide, each defining a discrete step within an animation.

```swift
struct PhaseAnimator<Phase, Content> where Phase : Equatable, Content : View
```

## Overview

Use one of the phase animator view modifiers like [phaseAnimator(_:content:animation:)](/documentation/swiftui/view/phaseanimator(_:content:animation:)) to create a phased animation in your app.

## Conforms To

- [View](/documentation/swiftui/view)

## Creating a phase animator

- [init(_:content:animation:)](/documentation/swiftui/phaseanimator/init(_:content:animation:)) Cycles through a sequence of phases continuously, animating updates to a view on each phase change.
- [init(_:trigger:content:animation:)](/documentation/swiftui/phaseanimator/init(_:trigger:content:animation:)) Cycles through a sequence of phases in response to changes in a specified value, animating updates to a view on each phase change.

## Creating phase-based animation

- [Controlling the timing and movements of your animations](/documentation/swiftui/controlling-the-timing-and-movements-of-your-animations)
- [phaseAnimator(_:content:animation:)](/documentation/swiftui/view/phaseanimator(_:content:animation:))
- [phaseAnimator(_:trigger:content:animation:)](/documentation/swiftui/view/phaseanimator(_:trigger:content:animation:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
