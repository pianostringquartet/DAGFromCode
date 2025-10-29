---
title: default
description: A default animation instance.
source: https://developer.apple.com/documentation/swiftui/animation/default
timestamp: 2025-10-29T00:10:55.121Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animation](/documentation/swiftui/animation)

**Type Property**

# default

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A default animation instance.

```swift
static let `default`: Animation
```

## Discussion

The `default` animation is [spring(response:dampingFraction:blendDuration:)](/documentation/swiftui/animation/spring(response:dampingfraction:blendduration:)) with:

- `response` equal to `0.55`
- `dampingFraction` equal to `1.0`
- `blendDuration` equal to `0.0`

Prior to iOS 17, macOS 14, tvOS 17, and watchOS 10, the `default` animation is [ease In Out](/documentation/swiftui/animation/easeinout).

The global function [withAnimation(_:_:)](/documentation/swiftui/withanimation(_:_:)) uses the default animation if you don’t provide one. For instance, the following code listing shows an example of using the `default` animation to flip the text “Hello” each time someone clicks the Animate button.

```swift
struct ContentView: View {
    @State private var degrees = Double.zero

    var body: some View {
        VStack {
            Spacer()
            Text("Hello")
                .font(.largeTitle)
                .rotation3DEffect(.degrees(degrees), axis: (x: 0, y: 1, z: 0))

            Spacer()
            Button("Animate") {
                withAnimation {
                    degrees = (degrees == .zero) ? 180 : .zero
                }
            }
        }
    }
}
```

To use the `default` animation when adding the [animation(_:value:)](/documentation/swiftui/view/animation(_:value:)) view modifier, specify it explicitly as the animation type. For instance, the following code shows an example of the `default` animation to spin the text “Hello” each time someone clicks the Animate button.

```swift
struct ContentView: View {
    @State private var degrees = Double.zero

    var body: some View {
        VStack {
            Spacer()
            Text("Hello")
                .font(.largeTitle)
                .rotationEffect(.degrees(degrees))
                .animation(.default, value: degrees)

            Spacer()
            Button("Animate") {
                degrees = (degrees == .zero) ? 360 : .zero
            }
        }
    }
}
```

A `default` animation instance is only equal to other `default` animation instances (using `==`), and not equal to other animation instances even when the animations are identical. For example, if you create an animation using the [spring(response:dampingFraction:blendDuration:)](/documentation/swiftui/animation/spring(response:dampingfraction:blendduration:)) modifier with the same parameter values that `default` uses, the animation isn’t equal to `default`. This behavior lets you differentiate between animations that you intentionally choose and those that use the `default` animation.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
