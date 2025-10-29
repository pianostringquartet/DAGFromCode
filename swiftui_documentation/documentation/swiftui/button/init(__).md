---
title: init(_:)
description: Creates a button based on a configuration for a style with a custom appearance and custom interaction behavior.
source: https://developer.apple.com/documentation/swiftui/button/init(_:)
timestamp: 2025-10-29T00:10:08.746Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [button](/documentation/swiftui/button)

**Initializer**

# init(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a button based on a configuration for a style with a custom appearance and custom interaction behavior.

```swift
nonisolated init(_ configuration: PrimitiveButtonStyleConfiguration)
```

## Parameters

**configuration**

A configuration for a style with a custom appearance and custom interaction behavior.



## Discussion

Use this initializer within the [makeBody(configuration:)](/documentation/swiftui/primitivebuttonstyle/makebody(configuration:)) method of a [Primitive Button Style](/documentation/swiftui/primitivebuttonstyle) to create an instance of the button that you want to style. This is useful for custom button styles that modify the current button style, rather than implementing a brand new style.

For example, the following style adds a red border around the button, but otherwise preserves the button’s current style:

```swift
struct RedBorderedButtonStyle: PrimitiveButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button(configuration)
            .border(Color.red)
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
