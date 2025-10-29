---
title: glassProminent
description: A button style that applies a prominent Liquid Glass effect based on the button’s context.
source: https://developer.apple.com/documentation/swiftui/primitivebuttonstyle/glassprominent
timestamp: 2025-10-29T00:09:11.232Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [primitivebuttonstyle](/documentation/swiftui/primitivebuttonstyle)

**Type Property**

# glassProminent

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, watchOS 26.0+

> A button style that applies a prominent Liquid Glass effect based on the button’s context.

```swift
@MainActor @preconcurrency static var glassProminent: GlassProminentButtonStyle { get }
```

## Discussion

In tvOS, this button style applies a Liquid Glass effect regardless of whether the button has focus. This style is similar to the [bordered Prominent](/documentation/swiftui/primitivebuttonstyle/borderedprominent) style.

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
- [glass(_:)](/documentation/swiftui/primitivebuttonstyle/glass(_:))
- [link](/documentation/swiftui/primitivebuttonstyle/link)
- [plain](/documentation/swiftui/primitivebuttonstyle/plain)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
