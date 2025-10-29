---
title: subscript(dynamicMember:)
description: Returns a binding to the resulting value of a given key path.
source: https://developer.apple.com/documentation/swiftui/binding/subscript(dynamicmember:)
timestamp: 2025-10-29T00:13:22.079Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [binding](/documentation/swiftui/binding)

**Instance Subscript**

# subscript(dynamicMember:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Returns a binding to the resulting value of a given key path.

```swift
subscript<Subject>(dynamicMember keyPath: WritableKeyPath<Value, Subject>) -> Binding<Subject> { get }
```

## Parameters

**keyPath**

A key path to a specific resulting value.



## Return Value

A new binding.

## Overview

Use dynamic member lookup to project a property of the binding’s wrapped value from a key path into a new binding. The returned value is read from, and written to, the original binding. This can be useful when a view accepts a binding for a type that only matches a property of a value from an existing binding.

For example, the `PlayerView` controls the current position for an episode using a `Slider`, and whether the episode is a favorite using a `Toggle`. The view projects the `currentPosition` and `isFavorite` properties of `Episode` into bindings that each of these views accept using dynamic member lookup.

```swift
struct Episode {
    var title: LocalizedStringKey
    var duration: TimeInterval
    var currentPosition: TimeInterval
    var isFavorite: Bool
}

struct PlayerView: View {
    @Binding var episode: Episode

    var body: some View {
        Text(episode.title)
        Toggle("Favorite", isOn: $episode.isFavorite)
        Slider(
            value: $episode.currentPosition,
            in: 0...episode.duration
        )
    }
}
```

## Getting the value

- [wrappedValue](/documentation/swiftui/binding/wrappedvalue)
- [projectedValue](/documentation/swiftui/binding/projectedvalue)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
