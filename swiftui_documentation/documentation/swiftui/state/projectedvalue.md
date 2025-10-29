---
title: projectedValue
description: A binding to the state value.
source: https://developer.apple.com/documentation/swiftui/state/projectedvalue
timestamp: 2025-10-29T00:10:15.156Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [state](/documentation/swiftui/state)

**Instance Property**

# projectedValue

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A binding to the state value.

```swift
var projectedValue: Binding<Value> { get }
```

## Discussion

Use the projected value to get a [Binding](/documentation/swiftui/binding) to the stored value. The binding provides a two-way connection to the stored value. To access the `projectedValue`, prefix the property variable with a dollar sign (`$`).

In the following example, `PlayerView` projects a binding of the state property `isPlaying` to the `PlayButton` view using `$isPlaying`. That enables the play button to both read and write the value:

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

- [wrappedValue](/documentation/swiftui/state/wrappedvalue)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
