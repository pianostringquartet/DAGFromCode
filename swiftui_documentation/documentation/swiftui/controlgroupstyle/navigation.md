---
title: navigation
description: The navigation control group style.
source: https://developer.apple.com/documentation/swiftui/controlgroupstyle/navigation
timestamp: 2025-10-29T00:11:19.018Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [controlgroupstyle](/documentation/swiftui/controlgroupstyle)

**Type Property**

# navigation

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, visionOS 1.0+

> The navigation control group style.

```swift
@MainActor @preconcurrency static var navigation: NavigationControlGroupStyle { get }
```

## Discussion

Use this style to group controls related to navigation, such as back/forward buttons or timeline navigation controls.

The navigation control group style can vary by platform. On iOS, it renders as individual borderless buttons, while on macOS, it displays as a separated momentary segmented control.

To apply this style to a control group or to a view that contains a control group, use the [controlGroupStyle(_:)](/documentation/swiftui/view/controlgroupstyle(_:)) modifier.

## Getting built-in control group styles

- [automatic](/documentation/swiftui/controlgroupstyle/automatic)
- [compactMenu](/documentation/swiftui/controlgroupstyle/compactmenu)
- [menu](/documentation/swiftui/controlgroupstyle/menu)
- [palette](/documentation/swiftui/controlgroupstyle/palette)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
