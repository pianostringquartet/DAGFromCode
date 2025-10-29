---
title: DefaultToggleStyle
description: The default toggle style.
source: https://developer.apple.com/documentation/swiftui/defaulttogglestyle
timestamp: 2025-10-29T00:14:07.705Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# DefaultToggleStyle

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The default toggle style.

```swift
struct DefaultToggleStyle
```

## Overview

Use the [automatic](/documentation/swiftui/togglestyle/automatic) static variable to create this style:

```swift
Toggle("Enhance Sound", isOn: $isEnhanced)
    .toggleStyle(.automatic)
```

## Conforms To

- [ToggleStyle](/documentation/swiftui/togglestyle)

## Creating the toggle style

- [init()](/documentation/swiftui/defaulttogglestyle/init()) Creates a default toggle style.

## Supporting types

- [makeBody(configuration:)](/documentation/swiftui/defaulttogglestyle/makebody(configuration:)) Creates a view that represents the body of a toggle.

## Supporting types

- [ButtonToggleStyle](/documentation/swiftui/buttontogglestyle)
- [CheckboxToggleStyle](/documentation/swiftui/checkboxtogglestyle)
- [SwitchToggleStyle](/documentation/swiftui/switchtogglestyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
