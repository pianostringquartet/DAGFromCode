---
title: TabViewStyle
description: A specification for the appearance and interaction of a tab view.
source: https://developer.apple.com/documentation/swiftui/tabviewstyle
timestamp: 2025-10-29T00:12:50.598Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# TabViewStyle

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A specification for the appearance and interaction of a tab view.

```swift
@MainActor @preconcurrency protocol TabViewStyle
```

## Overview

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

- [CarouselTabViewStyle](/documentation/swiftui/carouseltabviewstyle)
- [DefaultTabViewStyle](/documentation/swiftui/defaulttabviewstyle)
- [GroupedTabViewStyle](/documentation/swiftui/groupedtabviewstyle)
- [PageTabViewStyle](/documentation/swiftui/pagetabviewstyle)
- [SidebarAdaptableTabViewStyle](/documentation/swiftui/sidebaradaptabletabviewstyle)
- [TabBarOnlyTabViewStyle](/documentation/swiftui/tabbaronlytabviewstyle)
- [VerticalPageTabViewStyle](/documentation/swiftui/verticalpagetabviewstyle)

## Getting built-in tab view styles

- [automatic](/documentation/swiftui/tabviewstyle/automatic) The default tab view style.
- [sidebarAdaptable](/documentation/swiftui/tabviewstyle/sidebaradaptable) A tab bar style that adapts to each platform.
- [tabBarOnly](/documentation/swiftui/tabviewstyle/tabbaronly) A tab view style that displays a tab bar when possible.
- [grouped](/documentation/swiftui/tabviewstyle/grouped) A tab view style that displays a tab bar that groups its tabs together.
- [page](/documentation/swiftui/tabviewstyle/page) A  that displays a paged scrolling .
- [page(indexDisplayMode:)](/documentation/swiftui/tabviewstyle/page(indexdisplaymode:)) A  that implements a paged scrolling  with an index display mode.
- [verticalPage](/documentation/swiftui/tabviewstyle/verticalpage) A  that displays a vertical page  interaction and appearance.
- [verticalPage(transitionStyle:)](/documentation/swiftui/tabviewstyle/verticalpage(transitionstyle:)) A  that implements the vertical page  interaction and appearance, and performs the specified transition.
- [carousel](/documentation/swiftui/tabviewstyle/carousel) A style that implements the carousel interaction and appearance.

## Supporting types

- [DefaultTabViewStyle](/documentation/swiftui/defaulttabviewstyle) The default tab view style.
- [SidebarAdaptableTabViewStyle](/documentation/swiftui/sidebaradaptabletabviewstyle) A tab bar style that adapts to each platform.
- [TabBarOnlyTabViewStyle](/documentation/swiftui/tabbaronlytabviewstyle) A tab view style that displays a tab bar when possible.
- [GroupedTabViewStyle](/documentation/swiftui/groupedtabviewstyle) A tab view style that displays a tab bar that groups its tabs together.
- [PageTabViewStyle](/documentation/swiftui/pagetabviewstyle) A  that displays a paged scrolling .
- [VerticalPageTabViewStyle](/documentation/swiftui/verticalpagetabviewstyle) A  that displays a vertical  interaction and appearance.
- [CarouselTabViewStyle](/documentation/swiftui/carouseltabviewstyle) A style that implements the carousel interaction and appearance.

## Styling navigation views

- [navigationSplitViewStyle(_:)](/documentation/swiftui/view/navigationsplitviewstyle(_:))
- [NavigationSplitViewStyle](/documentation/swiftui/navigationsplitviewstyle)
- [tabViewStyle(_:)](/documentation/swiftui/view/tabviewstyle(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
