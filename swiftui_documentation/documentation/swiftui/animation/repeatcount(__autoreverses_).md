---
title: repeatCount(_:autoreverses:)
description: Repeats the animation for a specific number of times.
source: https://developer.apple.com/documentation/swiftui/animation/repeatcount(_:autoreverses:)
timestamp: 2025-10-29T00:13:18.819Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animation](/documentation/swiftui/animation)

**Instance Method**

# repeatCount(_:autoreverses:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Repeats the animation for a specific number of times.

```swift
func repeatCount(_ repeatCount: Int, autoreverses: Bool = true) -> Animation
```

## Parameters

**repeatCount**

The number of times that the animation repeats. Each repeated sequence starts at the beginning when `autoreverse` is `false`.



**autoreverses**

A Boolean value that indicates whether the animation sequence plays in reverse after playing forward. Autoreverse counts towards the `repeatCount`. For instance, a `repeatCount` of one plays the animation forward once, but it doesn’t play in reverse even if `autoreverse` is `true`. When `autoreverse` is `true` and `repeatCount` is `2`, the animation moves forward, then reverses, then stops.



## Return Value

An animation that repeats for specific number of times.

## Discussion

Use this method to repeat the animation a specific number of times. For example, in the following code, the animation moves a truck from one edge of the view to the other edge. It repeats this animation three times.

```swift
struct ContentView: View {
    @State private var driveForward = true

    private var driveAnimation: Animation {
        .easeInOut
        .repeatCount(3, autoreverses: true)
        .speed(0.5)
    }

    var body: some View {
        VStack(alignment: driveForward ? .leading : .trailing, spacing: 40) {
            Image(systemName: "box.truck")
                .font(.system(size: 48))
                .animation(driveAnimation, value: driveForward)

            HStack {
                Spacer()
                Button("Animate") {
                    driveForward.toggle()
                }
                Spacer()
            }
        }
    }
}
```

The first time the animation runs, the truck moves from the leading edge to the trailing edge of the view. The second time the animation runs, the truck moves from the trailing edge to the leading edge because `autoreverse` is `true`. If `autoreverse` were `false`, the truck would jump back to leading edge before moving to the trailing edge. The third time the animation runs, the truck moves from the leading to the trailing edge of the view.

## Configuring an animation

- [delay(_:)](/documentation/swiftui/animation/delay(_:))
- [repeatForever(autoreverses:)](/documentation/swiftui/animation/repeatforever(autoreverses:))
- [speed(_:)](/documentation/swiftui/animation/speed(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
