---
title: easeOut(duration:)
description: An animation with a specified duration that starts quickly and then slows towards the end of the movement.
source: https://developer.apple.com/documentation/swiftui/animation/easeout(duration:)
timestamp: 2025-10-29T00:13:02.091Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animation](/documentation/swiftui/animation)

**Type Method**

# easeOut(duration:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> An animation with a specified duration that starts quickly and then slows towards the end of the movement.

```swift
static func easeOut(duration: TimeInterval) -> Animation
```

## Parameters

**duration**

The length of time, expressed in seconds, that the animation takes to complete.



## Return Value

An ease-out animation with a specified duration.

## Discussion

An easing animation provides motion with a natural feel by varying the acceleration and deceleration of the animation, which matches how things tend to move in reality. With an ease out animation, the motion starts quickly and decreases its speed towards the end.

Use `easeOut(duration:)` when you want to specify the time it takes for the animation to complete. Otherwise, use [ease Out](/documentation/swiftui/animation/easeout) to perform the animation for a default length of time.

The following code shows an example of animating the size changes of a [Circle](/documentation/swiftui/circle) using an ease out animation with a duration of one second.

```swift
struct ContentView: View {
    @State private var scale = 0.5

    var body: some View {
        VStack {
            Circle()
                .scale(scale)
                .animation(.easeOut(duration: 1.0), value: scale)
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
- [easeInOut](/documentation/swiftui/animation/easeinout)
- [easeInOut(duration:)](/documentation/swiftui/animation/easeinout(duration:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
