---
title: ButtonToggleStyle
description: A toggle style that displays as a button with its label as the title.
source: https://developer.apple.com/documentation/swiftui/buttontogglestyle
timestamp: 2025-10-29T00:09:37.823Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ButtonToggleStyle

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, visionOS 1.0+, watchOS 9.0+

> A toggle style that displays as a button with its label as the title.

```swift
struct ButtonToggleStyle
```

## Overview

You can also use [button](/documentation/swiftui/togglestyle/button) to construct this style.

```swift
Toggle(isOn: $isFlagged) {
    Label("Flag", systemImage: "flag.fill")
}
.toggleStyle(.button)
```

## Conforms To

- [ToggleStyle](/documentation/swiftui/togglestyle)

## Creating the toggle style

- [init()](/documentation/swiftui/buttontogglestyle/init()) Creates a button toggle style.

## Supporting types

- [makeBody(configuration:)](/documentation/swiftui/buttontogglestyle/makebody(configuration:)) Creates a view that represents the body of a toggle button.

## Supporting types

- [DefaultToggleStyle](/documentation/swiftui/defaulttogglestyle)
- [CheckboxToggleStyle](/documentation/swiftui/checkboxtogglestyle)
- [SwitchToggleStyle](/documentation/swiftui/switchtogglestyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
