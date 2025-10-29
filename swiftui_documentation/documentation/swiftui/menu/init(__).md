---
title: init(_:)
description: Creates a menu based on a style configuration.
source: https://developer.apple.com/documentation/swiftui/menu/init(_:)
timestamp: 2025-10-29T00:13:48.059Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [menu](/documentation/swiftui/menu)

**Initializer**

# init(_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 17.0+, visionOS 1.0+

> Creates a menu based on a style configuration.

```swift
nonisolated init(_ configuration: MenuStyleConfiguration)
```

## Discussion

Use this initializer within the [makeBody(configuration:)](/documentation/swiftui/menustyle/makebody(configuration:)) method of a [Menu Style](/documentation/swiftui/menustyle) instance to create an instance of the menu being styled. This is useful for custom menu styles that modify the current menu style.

For example, the following code creates a new, custom style that adds a red border around the current menu style:

```swift
struct RedBorderMenuStyle: MenuStyle {
    func makeBody(configuration: Configuration) -> some View {
        Menu(configuration)
            .border(Color.red)
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
