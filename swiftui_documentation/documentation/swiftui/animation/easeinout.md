---
title: easeInOut
description: An animation that combines the behaviors of in and out easing animations.
source: https://developer.apple.com/documentation/swiftui/animation/easeinout
timestamp: 2025-10-29T00:11:29.253Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animation](/documentation/swiftui/animation)

**Type Property**

# easeInOut

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> An animation that combines the behaviors of in and out easing animations.

```swift
static var easeInOut: Animation { get }
```

## Return Value

An ease-in ease-out animation with the default duration.

## Discussion

An easing animation provides motion with a natural feel by varying the acceleration and deceleration of the animation, which matches how things tend to move in reality. An ease in and out animation starts slowly, increasing its speed towards the halfway point, and finally decreasing the speed towards the end of the animation.

The `easeInOut` animation has a default duration of 0.35 seconds. To specify the duration, use the [easeInOut(duration:)](/documentation/swiftui/animation/easeinout(duration:)) method.

The following code shows an example of animating the size changes of a [Circle](/documentation/swiftui/circle) using an ease in and out animation.

```swift
struct ContentView: View {
    @State private var scale = 0.5

    var body: some View {
        VStack {
            Circle()
                .scale(scale)
                .animation(.easeInOut, value: scale)
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
- [easeInOut(duration:)](/documentation/swiftui/animation/easeinout(duration:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
