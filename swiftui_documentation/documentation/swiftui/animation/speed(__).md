---
title: speed(_:)
description: Changes the duration of an animation by adjusting its speed.
source: https://developer.apple.com/documentation/swiftui/animation/speed(_:)
timestamp: 2025-10-29T00:15:28.603Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animation](/documentation/swiftui/animation)

**Instance Method**

# speed(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Changes the duration of an animation by adjusting its speed.

```swift
func speed(_ speed: Double) -> Animation
```

## Parameters

**speed**

The speed at which SwiftUI performs the animation.



## Return Value

An animation with the adjusted speed.

## Discussion

Setting the speed of an animation changes the duration of the animation by a factor of `speed`. A higher speed value causes a faster animation sequence due to a shorter duration. For example, a one-second animation with a speed of `2.0` completes in half the time (half a second).

```swift
struct ContentView: View {
    @State private var adjustBy = 100.0

    private var oneSecondAnimation: Animation {
       .easeInOut(duration: 1.0)
    }

    var body: some View {
        VStack(spacing: 40) {
            HStack(alignment: .bottom) {
                Capsule()
                    .frame(width: 50, height: 175 - adjustBy)
                Capsule()
                    .frame(width: 50, height: 175 + adjustBy)
            }
            .animation(oneSecondAnimation.speed(2.0), value: adjustBy)

            Button("Animate") {
                adjustBy *= -1
            }
        }
    }
}
```

Setting `speed` to a lower number slows the animation, extending its duration. For example, a one-second animation with a speed of `0.25` takes four seconds to complete.

```swift
struct ContentView: View {
    @State private var adjustBy = 100.0

    private var oneSecondAnimation: Animation {
       .easeInOut(duration: 1.0)
    }

    var body: some View {
        VStack(spacing: 40) {
            HStack(alignment: .bottom) {
                Capsule()
                    .frame(width: 50, height: 175 - adjustBy)
                Capsule()
                    .frame(width: 50, height: 175 + adjustBy)
            }
            .animation(oneSecondAnimation.speed(0.25), value: adjustBy)

            Button("Animate") {
                adjustBy *= -1
            }
        }
    }
}
```

## Configuring an animation

- [delay(_:)](/documentation/swiftui/animation/delay(_:))
- [repeatCount(_:autoreverses:)](/documentation/swiftui/animation/repeatcount(_:autoreverses:))
- [repeatForever(autoreverses:)](/documentation/swiftui/animation/repeatforever(autoreverses:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
