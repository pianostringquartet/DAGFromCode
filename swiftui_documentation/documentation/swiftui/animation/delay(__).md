---
title: delay(_:)
description: Delays the start of the animation by the specified number of seconds.
source: https://developer.apple.com/documentation/swiftui/animation/delay(_:)
timestamp: 2025-10-29T00:15:25.245Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animation](/documentation/swiftui/animation)

**Instance Method**

# delay(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Delays the start of the animation by the specified number of seconds.

```swift
func delay(_ delay: TimeInterval) -> Animation
```

## Parameters

**delay**

The number of seconds to delay the start of the animation.



## Return Value

An animation with a delayed start.

## Discussion

Use this method to delay the start of an animation. For example, the following code animates the height change of two capsules. Animation of the first [Capsule](/documentation/swiftui/capsule) begins immediately. However, animation of the second one doesn’t begin until a half second later.

```swift
struct ContentView: View {
    @State private var adjustBy = 100.0

    var body: some View {
        VStack(spacing: 40) {
            HStack(alignment: .bottom) {
                Capsule()
                    .frame(width: 50, height: 175 - adjustBy)
                    .animation(.easeInOut, value: adjustBy)
                Capsule()
                    .frame(width: 50, height: 175 + adjustBy)
                    .animation(.easeInOut.delay(0.5), value: adjustBy)
            }

            Button("Animate") {
                adjustBy *= -1
            }
        }
    }
}
```

## Configuring an animation

- [repeatCount(_:autoreverses:)](/documentation/swiftui/animation/repeatcount(_:autoreverses:))
- [repeatForever(autoreverses:)](/documentation/swiftui/animation/repeatforever(autoreverses:))
- [speed(_:)](/documentation/swiftui/animation/speed(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
