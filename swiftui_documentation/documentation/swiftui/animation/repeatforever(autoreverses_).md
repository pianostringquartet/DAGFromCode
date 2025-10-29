---
title: repeatForever(autoreverses:)
description: Repeats the animation for the lifespan of the view containing the animation.
source: https://developer.apple.com/documentation/swiftui/animation/repeatforever(autoreverses:)
timestamp: 2025-10-29T00:11:48.095Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animation](/documentation/swiftui/animation)

**Instance Method**

# repeatForever(autoreverses:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Repeats the animation for the lifespan of the view containing the animation.

```swift
func repeatForever(autoreverses: Bool = true) -> Animation
```

## Parameters

**autoreverses**

A Boolean value that indicates whether the animation sequence plays in reverse after playing forward.



## Return Value

An animation that continuously repeats.

## Discussion

Use this method to repeat the animation until the instance of the view no longer exists, or the view’s explicit or structural identity changes. For example, the following code continuously rotates a gear symbol for the lifespan of the view.

```swift
struct ContentView: View {
    @State private var rotationDegrees = 0.0

    private var animation: Animation {
        .linear
        .speed(0.1)
        .repeatForever(autoreverses: false)
    }

    var body: some View {
        Image(systemName: "gear")
            .font(.system(size: 86))
            .rotationEffect(.degrees(rotationDegrees))
            .onAppear {
                withAnimation(animation) {
                    rotationDegrees = 360.0
                }
            }
    }
}
```

## Configuring an animation

- [delay(_:)](/documentation/swiftui/animation/delay(_:))
- [repeatCount(_:autoreverses:)](/documentation/swiftui/animation/repeatcount(_:autoreverses:))
- [speed(_:)](/documentation/swiftui/animation/speed(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
