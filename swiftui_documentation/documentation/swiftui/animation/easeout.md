---
title: easeOut
description: An animation that starts quickly and then slows towards the end of the movement.
source: https://developer.apple.com/documentation/swiftui/animation/easeout
timestamp: 2025-10-29T00:13:42.773Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animation](/documentation/swiftui/animation)

**Type Property**

# easeOut

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> An animation that starts quickly and then slows towards the end of the movement.

```swift
static var easeOut: Animation { get }
```

## Return Value

An ease-out animation with the default duration.

## Discussion

An easing animation provides motion with a natural feel by varying the acceleration and deceleration of the animation, which matches how things tend to move in reality. With an ease out animation, the motion starts quickly and decreases its speed towards the end.

The `easeOut` animation has a default duration of 0.35 seconds. To specify a different duration, use [easeOut(duration:)](/documentation/swiftui/animation/easeout(duration:)).

The following code shows an example of animating the size changes of a [Circle](/documentation/swiftui/circle) using an ease out animation.

```swift
struct ContentView: View {
    @State private var scale = 0.5

    var body: some View {
        VStack {
            Circle()
                .scale(scale)
                .animation(.easeOut, value: scale)
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
- [easeOut(duration:)](/documentation/swiftui/animation/easeout(duration:))
- [easeInOut](/documentation/swiftui/animation/easeinout)
- [easeInOut(duration:)](/documentation/swiftui/animation/easeinout(duration:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
