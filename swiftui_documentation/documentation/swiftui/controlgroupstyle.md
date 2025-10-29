---
title: ControlGroupStyle
description: Defines the implementation of all control groups within a view hierarchy.
source: https://developer.apple.com/documentation/swiftui/controlgroupstyle
timestamp: 2025-10-29T00:14:07.028Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# ControlGroupStyle

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 17.0+, visionOS 1.0+

> Defines the implementation of all control groups within a view hierarchy.

```swift
@MainActor @preconcurrency protocol ControlGroupStyle
```

## Overview

To configure the current `ControlGroupStyle` for a view hierarchy, use the [controlGroupStyle(_:)](/documentation/swiftui/view/controlgroupstyle(_:)) modifier.

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

- [AutomaticControlGroupStyle](/documentation/swiftui/automaticcontrolgroupstyle)
- [CompactMenuControlGroupStyle](/documentation/swiftui/compactmenucontrolgroupstyle)
- [MenuControlGroupStyle](/documentation/swiftui/menucontrolgroupstyle)
- [NavigationControlGroupStyle](/documentation/swiftui/navigationcontrolgroupstyle)
- [PaletteControlGroupStyle](/documentation/swiftui/palettecontrolgroupstyle)

## Getting built-in control group styles

- [automatic](/documentation/swiftui/controlgroupstyle/automatic) The default control group style.
- [compactMenu](/documentation/swiftui/controlgroupstyle/compactmenu) A control group style that presents its content as a compact menu when the user presses the control, or as a submenu when nested within a larger menu.
- [menu](/documentation/swiftui/controlgroupstyle/menu) A control group style that presents its content as a menu when the user presses the control, or as a submenu when nested within a larger menu.
- [navigation](/documentation/swiftui/controlgroupstyle/navigation) The navigation control group style.
- [palette](/documentation/swiftui/controlgroupstyle/palette) A control group style that presents its content as a palette.

## Creating custom control group styles

- [makeBody(configuration:)](/documentation/swiftui/controlgroupstyle/makebody(configuration:)) Creates a view representing the body of a control group.
- [ControlGroupStyle.Configuration](/documentation/swiftui/controlgroupstyle/configuration) The properties of a  instance being created.
- [Body](/documentation/swiftui/controlgroupstyle/body) A view representing the body of a control group.

## Supporting types

- [AutomaticControlGroupStyle](/documentation/swiftui/automaticcontrolgroupstyle) The default control group style.
- [CompactMenuControlGroupStyle](/documentation/swiftui/compactmenucontrolgroupstyle) A control group style that presents its content as a compact menu when the user presses the control, or as a submenu when nested within a larger menu.
- [MenuControlGroupStyle](/documentation/swiftui/menucontrolgroupstyle) A control group style that presents its content as a menu when the user presses the control, or as a submenu when nested within a larger menu.
- [NavigationControlGroupStyle](/documentation/swiftui/navigationcontrolgroupstyle) The navigation control group style.
- [PaletteControlGroupStyle](/documentation/swiftui/palettecontrolgroupstyle) A control group style that presents its content as a palette.

## Styling groups

- [controlGroupStyle(_:)](/documentation/swiftui/view/controlgroupstyle(_:))
- [ControlGroupStyleConfiguration](/documentation/swiftui/controlgroupstyleconfiguration)
- [formStyle(_:)](/documentation/swiftui/view/formstyle(_:))
- [FormStyle](/documentation/swiftui/formstyle)
- [FormStyleConfiguration](/documentation/swiftui/formstyleconfiguration)
- [groupBoxStyle(_:)](/documentation/swiftui/view/groupboxstyle(_:))
- [GroupBoxStyle](/documentation/swiftui/groupboxstyle)
- [GroupBoxStyleConfiguration](/documentation/swiftui/groupboxstyleconfiguration)
- [indexViewStyle(_:)](/documentation/swiftui/view/indexviewstyle(_:))
- [IndexViewStyle](/documentation/swiftui/indexviewstyle)
- [labeledContentStyle(_:)](/documentation/swiftui/view/labeledcontentstyle(_:))
- [LabeledContentStyle](/documentation/swiftui/labeledcontentstyle)
- [LabeledContentStyleConfiguration](/documentation/swiftui/labeledcontentstyleconfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
