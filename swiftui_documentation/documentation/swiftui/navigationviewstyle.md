---
title: NavigationViewStyle
description: A specification for the appearance and interaction of a navigation view.
source: https://developer.apple.com/documentation/swiftui/navigationviewstyle
timestamp: 2025-10-29T00:12:49.843Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# NavigationViewStyle

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 7.0+

> A specification for the appearance and interaction of a navigation view.

```swift
protocol NavigationViewStyle
```

## Conforming Types

- [ColumnNavigationViewStyle](/documentation/swiftui/columnnavigationviewstyle)
- [DefaultNavigationViewStyle](/documentation/swiftui/defaultnavigationviewstyle)
- [DoubleColumnNavigationViewStyle](/documentation/swiftui/doublecolumnnavigationviewstyle)
- [StackNavigationViewStyle](/documentation/swiftui/stacknavigationviewstyle)

## Getting built-in navigation view styles

- [automatic](/documentation/swiftui/navigationviewstyle/automatic) The default navigation view style in the current context of the view being styled.
- [columns](/documentation/swiftui/navigationviewstyle/columns) A navigation view style represented by a series of views in columns.
- [stack](/documentation/swiftui/navigationviewstyle/stack) A navigation view style represented by a view stack that only shows a single top view at a time.

## Supporting types

- [DefaultNavigationViewStyle](/documentation/swiftui/defaultnavigationviewstyle) The default navigation view style.
- [ColumnNavigationViewStyle](/documentation/swiftui/columnnavigationviewstyle) A navigation view style represented by a series of views in columns.
- [StackNavigationViewStyle](/documentation/swiftui/stacknavigationviewstyle) A navigation view style represented by a view stack that only shows a single top view at a time.
- [DoubleColumnNavigationViewStyle](/documentation/swiftui/doublecolumnnavigationviewstyle) A navigation view style represented by a primary view stack that navigates to a detail view.

## Styling navigation views

- [navigationViewStyle(_:)](/documentation/swiftui/view/navigationviewstyle(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
