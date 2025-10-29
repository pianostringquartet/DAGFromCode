---
title: easeIn
description: An animation that starts slowly and then increases speed towards the end of the movement.
source: https://developer.apple.com/documentation/swiftui/animation/easein
timestamp: 2025-10-29T00:15:26.931Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animation](/documentation/swiftui/animation)

**Type Property**

# easeIn

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> An animation that starts slowly and then increases speed towards the end of the movement.

```swift
static var easeIn: Animation { get }
```

## Return Value

An ease-in animation with the default duration.

## Discussion

An easing animation provides motion with a natural feel by varying the acceleration and deceleration of the animation, which matches how things tend to move in reality. With an ease in animation, the motion starts slowly and increases its speed towards the end.

The `easeIn` animation has a default duration of 0.35 seconds. To specify a different duration, use [easeIn(duration:)](/documentation/swiftui/animation/easein(duration:)).

The following code shows an example of animating the size changes of a [Circle](/documentation/swiftui/circle) using the ease in animation.

```swift
struct ContentView: View {
    @State private var scale = 0.5

    var body: some View {
        VStack {
            Circle()
                .scale(scale)
                .animation(.easeIn, value: scale)
            HStack {
                Button("+") { scale += 0.1 }
                Button("-") { scale -= 0.1 }
            }
        }
    }
}
```

## Getting eased animations

- [easeIn(duration:)](/documentation/swiftui/animation/easein(duration:))
- [easeOut](/documentation/swiftui/animation/easeout)
- [easeOut(duration:)](/documentation/swiftui/animation/easeout(duration:))
- [easeInOut](/documentation/swiftui/animation/easeinout)
- [easeInOut(duration:)](/documentation/swiftui/animation/easeinout(duration:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
