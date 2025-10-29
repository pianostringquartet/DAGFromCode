---
title: Style modifiers
description: Apply built-in styles to different types of views.
source: https://developer.apple.com/documentation/swiftui/view-style-modifiers
timestamp: 2025-10-29T00:13:30.147Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Style modifiers

> Apply built-in styles to different types of views.

## Overview

SwiftUI defines built-in styles for certain kinds of views, and chooses the appropriate style for a particular presentation context. For example, a [Label](/documentation/swiftui/label) might appear as an icon, a string title, or both, depending on factors like the platform, whether the view appears in a toolbar, and so on.

You can override the automatic style by using one of the style modifiers. These modifiers typically propagate through container views, so you can wrap an entire view hierarchy in a style modifier to affect all the views of the given type within the hierarchy. Some view types enable you to create custom styles, which you also apply using style modifiers.

For more information about styling views, see [View](/documentation/swiftui/view-styles).

## Controls

- [buttonStyle(_:)](/documentation/swiftui/view/buttonstyle(_:)) Sets the style for buttons within this view to a button style with a custom appearance and standard interaction behavior.
- [datePickerStyle(_:)](/documentation/swiftui/view/datepickerstyle(_:)) Sets the style for date pickers within this view.
- [menuStyle(_:)](/documentation/swiftui/view/menustyle(_:)) Sets the style for menus within this view.
- [pickerStyle(_:)](/documentation/swiftui/view/pickerstyle(_:)) Sets the style for pickers within this view.
- [toggleStyle(_:)](/documentation/swiftui/view/togglestyle(_:)) Sets the style for toggles in a view hierarchy.

## Indicators

- [gaugeStyle(_:)](/documentation/swiftui/view/gaugestyle(_:)) Sets the style for gauges within this view.
- [progressViewStyle(_:)](/documentation/swiftui/view/progressviewstyle(_:)) Sets the style for progress views in this view.

## Text

- [labelStyle(_:)](/documentation/swiftui/view/labelstyle(_:)) Sets the style for labels within this view.
- [textFieldStyle(_:)](/documentation/swiftui/view/textfieldstyle(_:)) Sets the style for text fields within this view.
- [textEditorStyle(_:)](/documentation/swiftui/view/texteditorstyle(_:)) Sets the style for text editors within this view.

## Collections

- [listStyle(_:)](/documentation/swiftui/view/liststyle(_:)) Sets the style for lists within this view.
- [tableStyle(_:)](/documentation/swiftui/view/tablestyle(_:)) Sets the style for tables within this view.
- [disclosureGroupStyle(_:)](/documentation/swiftui/view/disclosuregroupstyle(_:)) Sets the style for disclosure groups within this view.

## Presentation

- [navigationSplitViewStyle(_:)](/documentation/swiftui/view/navigationsplitviewstyle(_:)) Sets the style for navigation split views within this view.
- [tabViewStyle(_:)](/documentation/swiftui/view/tabviewstyle(_:)) Sets the style for the tab view within the current environment.
- [presentedWindowStyle(_:)](/documentation/swiftui/view/presentedwindowstyle(_:)) Sets the style for windows created by interacting with this view.
- [presentedWindowToolbarStyle(_:)](/documentation/swiftui/view/presentedwindowtoolbarstyle(_:)) Sets the style for the toolbar in windows created by interacting with this view.

## Groups

- [controlGroupStyle(_:)](/documentation/swiftui/view/controlgroupstyle(_:)) Sets the style for control groups within this view.
- [groupBoxStyle(_:)](/documentation/swiftui/view/groupboxstyle(_:)) Sets the style for group boxes within this view.
- [indexViewStyle(_:)](/documentation/swiftui/view/indexviewstyle(_:)) Sets the style for the index view within the current environment.

## Drawing views

- [Layout modifiers](/documentation/swiftui/view-layout)
- [Graphics and rendering modifiers](/documentation/swiftui/view-graphics-and-rendering)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
