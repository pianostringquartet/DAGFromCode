---
title: borderless
description: A button style that doesn’t apply a border.
source: https://developer.apple.com/documentation/swiftui/primitivebuttonstyle/borderless
timestamp: 2025-10-29T00:14:02.634Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [primitivebuttonstyle](/documentation/swiftui/primitivebuttonstyle)

**Type Property**

# borderless

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 17.0+, visionOS 1.0+, watchOS 8.0+

> A button style that doesn’t apply a border.

```swift
@MainActor @preconcurrency static var borderless: BorderlessButtonStyle { get }
```

## Discussion

In tvOS, when a person focuses on a borderless button, the button animates to a raised position with a Liquid Glass effect. This button style applies a Liquid Glass effect to the first image of the button’s content when the button gains focus. To apply the effect to a different subview of your button, apply the [hoverEffect(_:)](/documentation/swiftui/view/hovereffect(_:)) modifier with a [highlight](/documentation/swiftui/hovereffect/highlight) effect to that subview. For more information, see [Creating-a-tv OS-media-catalog-app-in](/documentation/swiftui/creating-a-tvos-media-catalog-app-in-swiftui).

To apply this style to a button, or to a view that contains buttons, use the [buttonStyle(_:)](/documentation/swiftui/view/buttonstyle(_:)-66fbx) modifier.

## Getting built-in button styles

- [automatic](/documentation/swiftui/primitivebuttonstyle/automatic)
- [accessoryBar](/documentation/swiftui/primitivebuttonstyle/accessorybar)
- [accessoryBarAction](/documentation/swiftui/primitivebuttonstyle/accessorybaraction)
- [bordered](/documentation/swiftui/primitivebuttonstyle/bordered)
- [borderedProminent](/documentation/swiftui/primitivebuttonstyle/borderedprominent)
- [card](/documentation/swiftui/primitivebuttonstyle/card)
- [glass](/documentation/swiftui/primitivebuttonstyle/glass)
- [glassProminent](/documentation/swiftui/primitivebuttonstyle/glassprominent)
- [glass(_:)](/documentation/swiftui/primitivebuttonstyle/glass(_:))
- [link](/documentation/swiftui/primitivebuttonstyle/link)
- [plain](/documentation/swiftui/primitivebuttonstyle/plain)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
