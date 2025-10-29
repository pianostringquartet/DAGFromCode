---
title: automatic
description: The default button style, based on the button’s context.
source: https://developer.apple.com/documentation/swiftui/primitivebuttonstyle/automatic
timestamp: 2025-10-29T00:14:26.849Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [primitivebuttonstyle](/documentation/swiftui/primitivebuttonstyle)

**Type Property**

# automatic

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The default button style, based on the button’s context.

```swift
@MainActor @preconcurrency static var automatic: DefaultButtonStyle { get }
```

## Discussion

If you create a button directly on a blank canvas, the style varies by platform. iOS uses the borderless button style by default, whereas macOS, tvOS, and watchOS use the bordered button style.

If you create a button inside a container, like a [List](/documentation/swiftui/list), the style resolves to the recommended style for buttons inside that container for that specific platform.

You can override a button’s style. To apply the default style to a button, or to a view that contains buttons, use the [buttonStyle(_:)](/documentation/swiftui/view/buttonstyle(_:)) modifier.

## Getting built-in button styles

- [accessoryBar](/documentation/swiftui/primitivebuttonstyle/accessorybar)
- [accessoryBarAction](/documentation/swiftui/primitivebuttonstyle/accessorybaraction)
- [bordered](/documentation/swiftui/primitivebuttonstyle/bordered)
- [borderedProminent](/documentation/swiftui/primitivebuttonstyle/borderedprominent)
- [borderless](/documentation/swiftui/primitivebuttonstyle/borderless)
- [card](/documentation/swiftui/primitivebuttonstyle/card)
- [glass](/documentation/swiftui/primitivebuttonstyle/glass)
- [glassProminent](/documentation/swiftui/primitivebuttonstyle/glassprominent)
- [glass(_:)](/documentation/swiftui/primitivebuttonstyle/glass(_:))
- [link](/documentation/swiftui/primitivebuttonstyle/link)
- [plain](/documentation/swiftui/primitivebuttonstyle/plain)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
