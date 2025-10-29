---
title: AccessoryBarButtonStyle
description: A button style that you use for actions in an accessory toolbar that narrow the focus of a search or other operation.
source: https://developer.apple.com/documentation/swiftui/accessorybarbuttonstyle
timestamp: 2025-10-29T00:10:59.435Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# AccessoryBarButtonStyle

**Available on:** macOS 14.0+

> A button style that you use for actions in an accessory toolbar that narrow the focus of a search or other operation.

```swift
struct AccessoryBarButtonStyle
```

## Overview

This is the default button style for views in accessory toolbars, which you create with [init(id:)](/documentation/swiftui/toolbaritemplacement/init(id:)), and for searchable scopes. This style also affects other view types that you apply a button style to, like [Toggle](/documentation/swiftui/toggle), [Picker](/documentation/swiftui/picker), and [Menu](/documentation/swiftui/menu) instances.

Use [accessory Bar](/documentation/swiftui/primitivebuttonstyle/accessorybar) to construct this style.

## Conforms To

- [PrimitiveButtonStyle](/documentation/swiftui/primitivebuttonstyle)

## Creating the button style

- [init()](/documentation/swiftui/accessorybarbuttonstyle/init()) Creates an accessory toolbar style

## Supporting types

- [makeBody(configuration:)](/documentation/swiftui/accessorybarbuttonstyle/makebody(configuration:)) Creates a view that represents the body of a button.

## Supporting types

- [DefaultButtonStyle](/documentation/swiftui/defaultbuttonstyle)
- [AccessoryBarActionButtonStyle](/documentation/swiftui/accessorybaractionbuttonstyle)
- [BorderedButtonStyle](/documentation/swiftui/borderedbuttonstyle)
- [BorderedProminentButtonStyle](/documentation/swiftui/borderedprominentbuttonstyle)
- [BorderlessButtonStyle](/documentation/swiftui/borderlessbuttonstyle)
- [CardButtonStyle](/documentation/swiftui/cardbuttonstyle)
- [LinkButtonStyle](/documentation/swiftui/linkbuttonstyle)
- [PlainButtonStyle](/documentation/swiftui/plainbuttonstyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
