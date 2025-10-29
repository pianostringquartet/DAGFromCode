---
title: init(_:)
description: Creates a toggle based on a toggle style configuration.
source: https://developer.apple.com/documentation/swiftui/toggle/init(_:)
timestamp: 2025-10-29T00:14:47.368Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [toggle](/documentation/swiftui/toggle)

**Initializer**

# init(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a toggle based on a toggle style configuration.

```swift
nonisolated init(_ configuration: ToggleStyleConfiguration)
```

## Parameters

**configuration**

The properties of the toggle, including a label and a binding to the toggle’s state.



## Discussion

You can use this initializer within the [makeBody(configuration:)](/documentation/swiftui/togglestyle/makebody(configuration:)) method of a [Toggle Style](/documentation/swiftui/togglestyle) to create an instance of the styled toggle. This is useful for custom toggle styles that only modify the current toggle style, as opposed to implementing a brand new style.

For example, the following style adds a red border around the toggle, but otherwise preserves the toggle’s current style:

```swift
struct RedBorderToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Toggle(configuration)
            .padding()
            .border(.red)
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
