---
title: NavigationSplitViewStyle
description: A type that specifies the appearance and interaction of navigation split views within a view hierarchy.
source: https://developer.apple.com/documentation/swiftui/navigationsplitviewstyle
timestamp: 2025-10-29T00:14:52.475Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# NavigationSplitViewStyle

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A type that specifies the appearance and interaction of navigation split views within a view hierarchy.

```swift
@MainActor @preconcurrency protocol NavigationSplitViewStyle
```

## Overview

To configure the navigation split view style for a view hierarchy, use the [navigationSplitViewStyle(_:)](/documentation/swiftui/view/navigationsplitviewstyle(_:)) modifier.

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

- [AutomaticNavigationSplitViewStyle](/documentation/swiftui/automaticnavigationsplitviewstyle)
- [BalancedNavigationSplitViewStyle](/documentation/swiftui/balancednavigationsplitviewstyle)
- [ProminentDetailNavigationSplitViewStyle](/documentation/swiftui/prominentdetailnavigationsplitviewstyle)

## Creating built-in styles

- [automatic](/documentation/swiftui/navigationsplitviewstyle/automatic) A navigation split style that resolves its appearance automatically based on the current context.
- [balanced](/documentation/swiftui/navigationsplitviewstyle/balanced) A navigation split style that reduces the size of the detail content to make room when showing the leading column or columns.
- [prominentDetail](/documentation/swiftui/navigationsplitviewstyle/prominentdetail) A navigation split style that attempts to maintain the size of the detail content when hiding or showing the leading columns.

## Creating custom styles

- [makeBody(configuration:)](/documentation/swiftui/navigationsplitviewstyle/makebody(configuration:)) Creates a view that represents the body of a navigation split view.
- [NavigationSplitViewStyle.Configuration](/documentation/swiftui/navigationsplitviewstyle/configuration) The properties of a navigation split view instance.
- [Body](/documentation/swiftui/navigationsplitviewstyle/body) A view that represents the body of a navigation split view.

## Supporting types

- [AutomaticNavigationSplitViewStyle](/documentation/swiftui/automaticnavigationsplitviewstyle) A navigation split style that resolves its appearance automatically based on the current context.
- [BalancedNavigationSplitViewStyle](/documentation/swiftui/balancednavigationsplitviewstyle) A navigation split style that reduces the size of the detail content to make room when showing the leading column or columns.
- [ProminentDetailNavigationSplitViewStyle](/documentation/swiftui/prominentdetailnavigationsplitviewstyle) A navigation split style that attempts to maintain the size of the detail content when hiding or showing the leading columns.
- [NavigationSplitViewStyleConfiguration](/documentation/swiftui/navigationsplitviewstyleconfiguration) The properties of a navigation split view instance.

## Styling navigation views

- [navigationSplitViewStyle(_:)](/documentation/swiftui/view/navigationsplitviewstyle(_:))
- [tabViewStyle(_:)](/documentation/swiftui/view/tabviewstyle(_:))
- [TabViewStyle](/documentation/swiftui/tabviewstyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
