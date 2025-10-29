---
title: PrimitiveButtonStyle
description: A type that applies custom interaction behavior and a custom appearance to all buttons within a view hierarchy.
source: https://developer.apple.com/documentation/swiftui/primitivebuttonstyle
timestamp: 2025-10-29T00:12:17.856Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# PrimitiveButtonStyle

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A type that applies custom interaction behavior and a custom appearance to all buttons within a view hierarchy.

```swift
@MainActor @preconcurrency protocol PrimitiveButtonStyle
```

## Overview

To configure the current button style for a view hierarchy, use the [buttonStyle(_:)](/documentation/swiftui/view/buttonstyle(_:)) modifier. Specify a style that conforms to `PrimitiveButtonStyle` to create a button with custom interaction behavior. To create a button with the standard button interaction behavior defined for each platform, use [Button Style](/documentation/swiftui/buttonstyle) instead.

A type conforming to this protocol inherits `@preconcurrency @MainActor` isolation from the protocol if the conformance is included in the type’s base declaration:

```swift
struct MyCustomType: Transition {
    // `@preconcurrency @MainActor` isolation by default
}
```

Isolation to the main actor is the default, but it’s not required. Declare the conformance in an extension to opt out of main actor isolation:

```swift
extension MyCustomType: Transition {
    // `nonisolated` by default
}
```

## Conforming Types

- [AccessoryBarActionButtonStyle](/documentation/swiftui/accessorybaractionbuttonstyle)
- [AccessoryBarButtonStyle](/documentation/swiftui/accessorybarbuttonstyle)
- [BorderedButtonStyle](/documentation/swiftui/borderedbuttonstyle)
- [BorderedProminentButtonStyle](/documentation/swiftui/borderedprominentbuttonstyle)
- [BorderlessButtonStyle](/documentation/swiftui/borderlessbuttonstyle)
- [CardButtonStyle](/documentation/swiftui/cardbuttonstyle)
- [DefaultButtonStyle](/documentation/swiftui/defaultbuttonstyle)
- [GlassButtonStyle](/documentation/swiftui/glassbuttonstyle)
- [GlassProminentButtonStyle](/documentation/swiftui/glassprominentbuttonstyle)
- [LinkButtonStyle](/documentation/swiftui/linkbuttonstyle)
- [PlainButtonStyle](/documentation/swiftui/plainbuttonstyle)

## Getting built-in button styles

- [automatic](/documentation/swiftui/primitivebuttonstyle/automatic) The default button style, based on the button’s context.
- [accessoryBar](/documentation/swiftui/primitivebuttonstyle/accessorybar) A button style that is typically used in the context of an accessory toolbar (sometimes refererred to as a “scope bar”), for buttons that narrow the focus of a search or other operation.
- [accessoryBarAction](/documentation/swiftui/primitivebuttonstyle/accessorybaraction) A button style that you use for extra actions in an accessory toolbar.
- [bordered](/documentation/swiftui/primitivebuttonstyle/bordered) A button style that applies the standard border style based on the button’s context.
- [borderedProminent](/documentation/swiftui/primitivebuttonstyle/borderedprominent) A button style that applies the standard bordered prominent style based on the button’s context.
- [borderless](/documentation/swiftui/primitivebuttonstyle/borderless) A button style that doesn’t apply a border.
- [card](/documentation/swiftui/primitivebuttonstyle/card) A button style that doesn’t pad the content, and applies a Liquid Glass effect when the button has focus.
- [glass](/documentation/swiftui/primitivebuttonstyle/glass) A button style that applies a Liquid Glass effect based on the button’s context.
- [glassProminent](/documentation/swiftui/primitivebuttonstyle/glassprominent) A button style that applies a prominent Liquid Glass effect based on the button’s context.
- [glass(_:)](/documentation/swiftui/primitivebuttonstyle/glass(_:)) A button style that applies a configurable Liquid Glass effect based on the button’s context.
- [link](/documentation/swiftui/primitivebuttonstyle/link) A button style for buttons that emulate links.
- [plain](/documentation/swiftui/primitivebuttonstyle/plain) A button style that doesn’t style or decorate its content while idle, but may apply a visual effect to indicate the pressed, focused, or enabled state of the button.

## Creating custom button styles

- [makeBody(configuration:)](/documentation/swiftui/primitivebuttonstyle/makebody(configuration:)) Creates a view that represents the body of a button.
- [PrimitiveButtonStyle.Configuration](/documentation/swiftui/primitivebuttonstyle/configuration) The properties of a button.
- [Body](/documentation/swiftui/primitivebuttonstyle/body) A view that represents the body of a button.

## Supporting types

- [DefaultButtonStyle](/documentation/swiftui/defaultbuttonstyle) The default button style, based on the button’s context.
- [AccessoryBarButtonStyle](/documentation/swiftui/accessorybarbuttonstyle) A button style that you use for actions in an accessory toolbar that narrow the focus of a search or other operation.
- [AccessoryBarActionButtonStyle](/documentation/swiftui/accessorybaractionbuttonstyle) A button style that you use for extra actions in an accessory toolbar.
- [BorderedButtonStyle](/documentation/swiftui/borderedbuttonstyle) A button style that applies standard border artwork based on the button’s context.
- [BorderedProminentButtonStyle](/documentation/swiftui/borderedprominentbuttonstyle) A button style that applies standard border prominent artwork based on the button’s context.
- [BorderlessButtonStyle](/documentation/swiftui/borderlessbuttonstyle) A button style that doesn’t apply a border.
- [CardButtonStyle](/documentation/swiftui/cardbuttonstyle) A button style that doesn’t pad the content, and applies a motion effect when a button has focus.
- [LinkButtonStyle](/documentation/swiftui/linkbuttonstyle) A button style for buttons that emulate links.
- [PlainButtonStyle](/documentation/swiftui/plainbuttonstyle) A button style that doesn’t style or decorate its content while idle, but may apply a visual effect to indicate the pressed, focused, or enabled state of the button.

## Styling buttons

- [buttonStyle(_:)](/documentation/swiftui/view/buttonstyle(_:))
- [ButtonStyle](/documentation/swiftui/buttonstyle)
- [ButtonStyleConfiguration](/documentation/swiftui/buttonstyleconfiguration)
- [PrimitiveButtonStyleConfiguration](/documentation/swiftui/primitivebuttonstyleconfiguration)
- [signInWithAppleButtonStyle(_:)](/documentation/swiftui/view/signinwithapplebuttonstyle(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
