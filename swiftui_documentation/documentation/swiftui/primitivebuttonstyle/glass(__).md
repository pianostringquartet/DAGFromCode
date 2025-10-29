---
title: glass(_:)
description: A button style that applies a configurable Liquid Glass effect based on the button’s context.
source: https://developer.apple.com/documentation/swiftui/primitivebuttonstyle/glass(_:)
timestamp: 2025-10-29T00:09:35.228Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [primitivebuttonstyle](/documentation/swiftui/primitivebuttonstyle)

**Type Method**

# glass(_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, watchOS 26.0+

> A button style that applies a configurable Liquid Glass effect based on the button’s context.

```swift
@MainActor @preconcurrency static func glass(_ glass: Glass) -> Self
```

## Discussion

This button style applies a Liquid Glass effect that you can customize by specifying a tint or variant. In the following example, the button renders using the clear variant of Liquid Glass:

```swift
Button("Button") {}
    .buttonStyle(.glass(.clear))
```

In tvOS, this button style applies a Liquid Glass effect regardless of whether the button has focus. This style is similar to the [bordered](/documentation/swiftui/primitivebuttonstyle/bordered) style.

To apply this style to a button, or to a view that contains buttons, use the [buttonStyle(_:)](/documentation/swiftui/view/buttonstyle(_:)-66fbx) modifier.

## Getting built-in button styles

- [automatic](/documentation/swiftui/primitivebuttonstyle/automatic)
- [accessoryBar](/documentation/swiftui/primitivebuttonstyle/accessorybar)
- [accessoryBarAction](/documentation/swiftui/primitivebuttonstyle/accessorybaraction)
- [bordered](/documentation/swiftui/primitivebuttonstyle/bordered)
- [borderedProminent](/documentation/swiftui/primitivebuttonstyle/borderedprominent)
- [borderless](/documentation/swiftui/primitivebuttonstyle/borderless)
- [card](/documentation/swiftui/primitivebuttonstyle/card)
- [glass](/documentation/swiftui/primitivebuttonstyle/glass)
- [glassProminent](/documentation/swiftui/primitivebuttonstyle/glassprominent)
- [link](/documentation/swiftui/primitivebuttonstyle/link)
- [plain](/documentation/swiftui/primitivebuttonstyle/plain)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
