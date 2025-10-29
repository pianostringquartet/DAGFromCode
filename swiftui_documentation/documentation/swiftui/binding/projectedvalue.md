---
title: projectedValue
description: A projection of the binding value that returns a binding.
source: https://developer.apple.com/documentation/swiftui/binding/projectedvalue
timestamp: 2025-10-29T00:11:55.128Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [binding](/documentation/swiftui/binding)

**Instance Property**

# projectedValue

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A projection of the binding value that returns a binding.

```swift
var projectedValue: Binding<Value> { get }
```

## Discussion

Use the projected value to pass a binding value down a view hierarchy. To get the `projectedValue`, prefix the property variable with `$`. For example, in the following code example `PlayerView` projects a binding of the state property `isPlaying` to the `PlayButton` view using `$isPlaying`.

```swift
struct PlayerView: View {
    var episode: Episode
    @State private var isPlaying: Bool = false

    var body: some View {
        VStack {
            Text(episode.title)
                .foregroundStyle(isPlaying ? .primary : .secondary)
            PlayButton(isPlaying: $isPlaying)
        }
    }
}
```

## Getting the value

- [wrappedValue](/documentation/swiftui/binding/wrappedvalue)
- [subscript(dynamicMember:)](/documentation/swiftui/binding/subscript(dynamicmember:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
