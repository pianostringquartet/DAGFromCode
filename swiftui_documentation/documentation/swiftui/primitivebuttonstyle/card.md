---
title: card
description: A button style that doesn’t pad the content, and applies a Liquid Glass effect when the button has focus.
source: https://developer.apple.com/documentation/swiftui/primitivebuttonstyle/card
timestamp: 2025-10-29T00:14:23.840Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [primitivebuttonstyle](/documentation/swiftui/primitivebuttonstyle)

**Type Property**

# card

**Available on:** tvOS 14.0+

> A button style that doesn’t pad the content, and applies a Liquid Glass effect when the button has focus.

```swift
@MainActor @preconcurrency static var card: CardButtonStyle { get }
```

## Discussion

This button style applies a Liquid Glass effect when the button gains focus. This style doesn’t apply any intrinsic padding to its contents, so images, text, and other content display edge-to-edge.

To apply this style to a button, or to a view that contains buttons, use the [buttonStyle(_:)](/documentation/swiftui/view/buttonstyle(_:)-66fbx) modifier.

## Getting built-in button styles

- [automatic](/documentation/swiftui/primitivebuttonstyle/automatic)
- [accessoryBar](/documentation/swiftui/primitivebuttonstyle/accessorybar)
- [accessoryBarAction](/documentation/swiftui/primitivebuttonstyle/accessorybaraction)
- [bordered](/documentation/swiftui/primitivebuttonstyle/bordered)
- [borderedProminent](/documentation/swiftui/primitivebuttonstyle/borderedprominent)
- [borderless](/documentation/swiftui/primitivebuttonstyle/borderless)
- [glass](/documentation/swiftui/primitivebuttonstyle/glass)
- [glassProminent](/documentation/swiftui/primitivebuttonstyle/glassprominent)
- [glass(_:)](/documentation/swiftui/primitivebuttonstyle/glass(_:))
- [link](/documentation/swiftui/primitivebuttonstyle/link)
- [plain](/documentation/swiftui/primitivebuttonstyle/plain)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
