---
title: SwitchToggleStyle
description: A toggle style that displays a leading label and a trailing switch.
source: https://developer.apple.com/documentation/swiftui/switchtogglestyle
timestamp: 2025-10-29T00:14:40.477Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SwitchToggleStyle

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 18.0+, visionOS 1.0+, watchOS 6.0+

> A toggle style that displays a leading label and a trailing switch.

```swift
struct SwitchToggleStyle
```

## Overview

Use the [switch](/documentation/swiftui/togglestyle/switch) static variable to create this style:

```swift
Toggle("Enhance Sound", isOn: $isEnhanced)
    .toggleStyle(.switch)
```

## Conforms To

- [ToggleStyle](/documentation/swiftui/togglestyle)

## Creating the toggle style

- [init()](/documentation/swiftui/switchtogglestyle/init()) Creates a switch toggle style.

## Supporting types

- [makeBody(configuration:)](/documentation/swiftui/switchtogglestyle/makebody(configuration:)) Creates a view that represents the body of a toggle switch.

## Deprecated initializers

- [init(tint:)](/documentation/swiftui/switchtogglestyle/init(tint:)) Creates a switch style with a tint color.

## Supporting types

- [DefaultToggleStyle](/documentation/swiftui/defaulttogglestyle)
- [ButtonToggleStyle](/documentation/swiftui/buttontogglestyle)
- [CheckboxToggleStyle](/documentation/swiftui/checkboxtogglestyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
