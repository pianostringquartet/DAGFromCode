---
title: MenuActionDismissBehavior
description: The set of menu dismissal behavior options.
source: https://developer.apple.com/documentation/swiftui/menuactiondismissbehavior
timestamp: 2025-10-29T00:12:22.353Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# MenuActionDismissBehavior

**Available on:** iOS 16.4+, iPadOS 16.4+, Mac Catalyst 16.4+, macOS 13.3+, tvOS 16.4+, visionOS 1.0+, watchOS 9.4+

> The set of menu dismissal behavior options.

```swift
struct MenuActionDismissBehavior
```

## Overview

Configure the menu dismissal behavior for a view hierarchy using the [menuActionDismissBehavior(_:)](/documentation/swiftui/view/menuactiondismissbehavior(_:)) view modifier.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)

## Getting dismiss behaviors

- [automatic](/documentation/swiftui/menuactiondismissbehavior/automatic) Use the a dismissal behavior that’s appropriate for the given context.
- [disabled](/documentation/swiftui/menuactiondismissbehavior/disabled) Never dismiss the presented menu after performing an action.
- [enabled](/documentation/swiftui/menuactiondismissbehavior/enabled) Always dismiss the presented menu after performing an action.

## Configuring menu dismissal

- [menuActionDismissBehavior(_:)](/documentation/swiftui/view/menuactiondismissbehavior(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
