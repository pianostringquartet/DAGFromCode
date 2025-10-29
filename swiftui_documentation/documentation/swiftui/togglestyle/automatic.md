---
title: automatic
description: The default toggle style.
source: https://developer.apple.com/documentation/swiftui/togglestyle/automatic
timestamp: 2025-10-29T00:09:36.649Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [togglestyle](/documentation/swiftui/togglestyle)

**Type Property**

# automatic

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The default toggle style.

```swift
@MainActor @preconcurrency static var automatic: DefaultToggleStyle { get }
```

## Discussion

Use this [Toggle Style](/documentation/swiftui/togglestyle) to let SwiftUI pick a suitable style for the current platform and context. Toggles use the `automatic` style by default, but you might need to set it explicitly using the [toggleStyle(_:)](/documentation/swiftui/view/togglestyle(_:)) modifier to override another style in the environment. For example, you can request automatic styling for a toggle in an [HStack](/documentation/swiftui/hstack) that’s otherwise configured to use the [button](/documentation/swiftui/togglestyle/button) style:

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
        .toggleStyle(.automatic) // Set the style automatically here.
}
.toggleStyle(.button) // Use button style for toggles in the stack.
```

### Platform defaults

The `automatic` style produces an appearance that varies by platform, using the following styles in most contexts:

The default style for tvOS behaves like a button. However, unlike the [switch](/documentation/swiftui/togglestyle/switch) style that’s on other platforms, the tvOS toggle takes as much horizontal space as its parent offers, and displays both the toggle’s label and a text field that indicates the toggle’s state. You typically collect tvOS toggles into a [List](/documentation/swiftui/list):

```swift
List {
    Toggle("Show Lyrics", isOn: $isShowingLyrics)
    Toggle("Shuffle", isOn: $isShuffling)
    Toggle("Repeat", isOn: $isRepeating)
}
```



### Contextual defaults

A toggle’s automatic appearance varies in certain contexts:

- A toggle that appears as part of the content that you provide to one of the toolbar modifiers, like [toolbar(content:)](/documentation/swiftui/view/toolbar(content:)), uses the [button](/documentation/swiftui/togglestyle/button) style by default.
- A toggle in a [Menu](/documentation/swiftui/menu) uses a style that you can’t create explicitly:

```swift
Menu("Playback") {
    Toggle("Show Lyrics", isOn: $isShowingLyrics)
    Toggle("Shuffle", isOn: $isShuffling)
    Toggle("Repeat", isOn: $isRepeating)
}
```

SwiftUI shows the toggle’s label with a checkmark that appears only in the `on` state:

## Getting built-in toggle styles

- [button](/documentation/swiftui/togglestyle/button)
- [checkbox](/documentation/swiftui/togglestyle/checkbox)
- [switch](/documentation/swiftui/togglestyle/switch)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
