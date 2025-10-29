---
title: AccessoryBarActionButtonStyle
description: A button style that you use for extra actions in an accessory toolbar.
source: https://developer.apple.com/documentation/swiftui/accessorybaractionbuttonstyle
timestamp: 2025-10-29T00:09:47.465Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# AccessoryBarActionButtonStyle

**Available on:** macOS 14.0+

> A button style that you use for extra actions in an accessory toolbar.

```swift
struct AccessoryBarActionButtonStyle
```

## Overview

Use this style for buttons that perform extra actions relative to the accessory toolbar’s main functions, like adding or editing filters. This style also affects other view types that you apply a button style to, like [Toggle](/documentation/swiftui/toggle), [Picker](/documentation/swiftui/picker), and [Menu](/documentation/swiftui/menu) instances.

Use [accessory Bar Action](/documentation/swiftui/primitivebuttonstyle/accessorybaraction) to construct this style.

## Conforms To

- [PrimitiveButtonStyle](/documentation/swiftui/primitivebuttonstyle)

## Creating the button style

- [init()](/documentation/swiftui/accessorybaractionbuttonstyle/init()) Creates an accessory toolbar action button style

## Supporting types

- [makeBody(configuration:)](/documentation/swiftui/accessorybaractionbuttonstyle/makebody(configuration:)) Creates a view that represents the body of a button.

## Supporting types

- [DefaultButtonStyle](/documentation/swiftui/defaultbuttonstyle)
- [AccessoryBarButtonStyle](/documentation/swiftui/accessorybarbuttonstyle)
- [BorderedButtonStyle](/documentation/swiftui/borderedbuttonstyle)
- [BorderedProminentButtonStyle](/documentation/swiftui/borderedprominentbuttonstyle)
- [BorderlessButtonStyle](/documentation/swiftui/borderlessbuttonstyle)
- [CardButtonStyle](/documentation/swiftui/cardbuttonstyle)
- [LinkButtonStyle](/documentation/swiftui/linkbuttonstyle)
- [PlainButtonStyle](/documentation/swiftui/plainbuttonstyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
