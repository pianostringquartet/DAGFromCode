---
title: easeInOut(duration:)
description: An animation with a specified duration that combines the behaviors of in and out easing animations.
source: https://developer.apple.com/documentation/swiftui/animation/easeinout(duration:)
timestamp: 2025-10-29T00:11:30.664Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animation](/documentation/swiftui/animation)

**Type Method**

# easeInOut(duration:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> An animation with a specified duration that combines the behaviors of in and out easing animations.

```swift
static func easeInOut(duration: TimeInterval) -> Animation
```

## Parameters

**duration**

The length of time, expressed in seconds, that the animation takes to complete.



## Return Value

An ease-in ease-out animation with a specified duration.

## Discussion

An easing animation provides motion with a natural feel by varying the acceleration and deceleration of the animation, which matches how things tend to move in reality. An ease in and out animation starts slowly, increasing its speed towards the halfway point, and finally decreasing the speed towards the end of the animation.

Use `easeInOut(duration:)` when you want to specify the time it takes for the animation to complete. Otherwise, use [ease In Out](/documentation/swiftui/animation/easeinout) to perform the animation for a default length of time.

The following code shows an example of animating the size changes of a [Circle](/documentation/swiftui/circle) using an ease in and out animation with a duration of one second.

```swift
struct ContentView: View {
    @State private var scale = 0.5

    var body: some View {
        VStack {
            Circle()
                .scale(scale)
                .animation(.easeInOut(duration: 1.0), value: scale)
            HStack {
                Button("+") { scale += 0.1 }
                Button("-") { scale -= 0.1 }
            }
        }
    }
}
```

## Getting eased animations

- [easeIn](/documentation/swiftui/animation/easein)
- [easeIn(duration:)](/documentation/swiftui/animation/easein(duration:))
- [easeOut](/documentation/swiftui/animation/easeout)
- [easeOut(duration:)](/documentation/swiftui/animation/easeout(duration:))
- [easeInOut](/documentation/swiftui/animation/easeinout)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
