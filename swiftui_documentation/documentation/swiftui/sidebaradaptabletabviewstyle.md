---
title: SidebarAdaptableTabViewStyle
description: A tab bar style that adapts to each platform.
source: https://developer.apple.com/documentation/swiftui/sidebaradaptabletabviewstyle
timestamp: 2025-10-29T00:12:58.761Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SidebarAdaptableTabViewStyle

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+

> A tab bar style that adapts to each platform.

```swift
struct SidebarAdaptableTabViewStyle
```

## Overview

Tab views using the sidebar adaptable style have an appearance that varies depending on the platform:

- iPadOS displays a top tab bar that can adapt into a sidebar.
- iOS displays a bottom tab bar.
- macOS and tvOS always show a sidebar.
- visionOS shows an ornament and also shows a sidebar for secondary tabs within a [Tab Section](/documentation/swiftui/tabsection).

Use [sidebar Adaptable](/documentation/swiftui/tabviewstyle/sidebaradaptable) to construct this style.

To apply this style to a tab view, or to a view that contains tab views, use the [tabViewStyle(_:)](/documentation/swiftui/view/tabviewstyle(_:)) modifier.

## Conforms To

- [TabViewStyle](/documentation/swiftui/tabviewstyle)

## Initializers

- [init()](/documentation/swiftui/sidebaradaptabletabviewstyle/init())

## Supporting types

- [DefaultTabViewStyle](/documentation/swiftui/defaulttabviewstyle)
- [TabBarOnlyTabViewStyle](/documentation/swiftui/tabbaronlytabviewstyle)
- [GroupedTabViewStyle](/documentation/swiftui/groupedtabviewstyle)
- [PageTabViewStyle](/documentation/swiftui/pagetabviewstyle)
- [VerticalPageTabViewStyle](/documentation/swiftui/verticalpagetabviewstyle)
- [CarouselTabViewStyle](/documentation/swiftui/carouseltabviewstyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
