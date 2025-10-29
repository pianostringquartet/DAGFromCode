---
title: CheckboxToggleStyle
description: A toggle style that displays a checkbox followed by its label.
source: https://developer.apple.com/documentation/swiftui/checkboxtogglestyle
timestamp: 2025-10-29T00:11:25.404Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# CheckboxToggleStyle

**Available on:** macOS 10.15+

> A toggle style that displays a checkbox followed by its label.

```swift
struct CheckboxToggleStyle
```

## Overview

Use the [checkbox](/documentation/swiftui/togglestyle/checkbox) static variable to create this style:

```swift
Toggle("Close windows when quitting an app", isOn: $doesClose)
    .toggleStyle(.checkbox)
```

## Conforms To

- [ToggleStyle](/documentation/swiftui/togglestyle)

## Creating the toggle style

- [init()](/documentation/swiftui/checkboxtogglestyle/init()) Creates a checkbox toggle style.

## Supporting types

- [makeBody(configuration:)](/documentation/swiftui/checkboxtogglestyle/makebody(configuration:)) Creates a view that represents the body of a toggle checkbox.

## Supporting types

- [DefaultToggleStyle](/documentation/swiftui/defaulttogglestyle)
- [ButtonToggleStyle](/documentation/swiftui/buttontogglestyle)
- [SwitchToggleStyle](/documentation/swiftui/switchtogglestyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
