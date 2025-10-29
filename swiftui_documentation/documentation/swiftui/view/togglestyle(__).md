---
title: toggleStyle(_:)
description: Sets the style for toggles in a view hierarchy.
source: https://developer.apple.com/documentation/swiftui/view/togglestyle(_:)
timestamp: 2025-10-29T00:13:03.372Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# toggleStyle(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Sets the style for toggles in a view hierarchy.

```swift
nonisolated func toggleStyle<S>(_ style: S) -> some View where S : ToggleStyle
```

## Parameters

**style**

The toggle style to set. Use one of the built-in values, like [switch](/documentation/swiftui/togglestyle/switch) or [button](/documentation/swiftui/togglestyle/button), or a custom style that you define by creating a type that conforms to the [Toggle Style](/documentation/swiftui/togglestyle) protocol.



## Return Value

A view that uses the specified toggle style for itself and its child views.

## Discussion

Use this modifier on a [Toggle](/documentation/swiftui/toggle) instance to set a style that defines the control’s appearance and behavior. For example, you can choose the [switch](/documentation/swiftui/togglestyle/switch) style:

```swift
Toggle("Vibrate on Ring", isOn: $vibrateOnRing)
    .toggleStyle(.switch)
```

Built-in styles typically have a similar appearance across platforms, tailored to the platform’s overall style:

### Styling toggles in a hierarchy

You can set a style for all toggle instances within a view hierarchy by applying the style modifier to a container view. For example, you can apply the [button](/documentation/swiftui/togglestyle/button) style to an [HStack](/documentation/swiftui/hstack):

```swift
HStack {
    Toggle(isOn: $isFlagged) {
        Label("Flag", systemImage: "flag.fill")
    }
    Toggle(isOn: $isMuted) {
        Label("Mute", systemImage: "speaker.slash.fill")
    }
}
.toggleStyle(.button)
```

The example above has the following appearance when `isFlagged` is `true` and `isMuted` is `false`:

### Automatic styling

If you don’t set a style, SwiftUI assumes a value of [automatic](/documentation/swiftui/togglestyle/automatic), which corresponds to a context-specific default. Specify the automatic style explicitly to override a container’s style and revert to the default:

```swift
HStack {
    Toggle(isOn: $isShuffling) {
        Label("Shuffle", systemImage: "shuffle")
    }
    Toggle(isOn: $isRepeating) {
        Label("Repeat", systemImage: "repeat")
    }

    Divider()

    Toggle("Enhance Sound", isOn: $isEnhanced)
        .toggleStyle(.automatic) // Revert to the default style.
}
.toggleStyle(.button) // Use button style for toggles in the stack.
.labelStyle(.iconOnly) // Omit the title from any labels.
```

The style that SwiftUI uses as the default depends on both the platform and the context. In macOS, the default in most contexts is a [checkbox](/documentation/swiftui/togglestyle/checkbox), while in iOS, the default toggle style is a [switch](/documentation/swiftui/togglestyle/switch):

> [!NOTE]
> Like toggle style does for toggles, the [labelStyle(_:)](/documentation/swiftui/view/labelstyle(_:)) modifier sets the style for [Label](/documentation/swiftui/label) instances in the hierarchy. The example above demostrates the compact [icon Only](/documentation/swiftui/labelstyle/icononly) style, which is useful for button toggles in space-constrained contexts. Always include a descriptive title for better accessibility.

For more information about how SwiftUI chooses a default toggle style, see the [automatic](/documentation/swiftui/togglestyle/automatic) style.

## Getting numeric inputs

- [Slider](/documentation/swiftui/slider)
- [Stepper](/documentation/swiftui/stepper)
- [Toggle](/documentation/swiftui/toggle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
