---
title: sidebarAdaptable
description: A tab bar style that adapts to each platform.
source: https://developer.apple.com/documentation/swiftui/tabviewstyle/sidebaradaptable
timestamp: 2025-10-29T00:09:59.392Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tabviewstyle](/documentation/swiftui/tabviewstyle)

**Type Property**

# sidebarAdaptable

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+

> A tab bar style that adapts to each platform.

```swift
@MainActor @preconcurrency static var sidebarAdaptable: SidebarAdaptableTabViewStyle { get }
```

## Discussion

Tab views using the sidebar adaptable style have an appearance that varies depending on the platform:

- iPadOS displays a top tab bar that can adapt into a sidebar.
- iOS displays a bottom tab bar.
- macOS and tvOS always show a sidebar.
- visionOS shows an ornament and also shows a sidebar for secondary tabs within a [Tab Section](/documentation/swiftui/tabsection).

To apply this style to a tab view, or to a view that contains tab views, use the [tabViewStyle(_:)](/documentation/swiftui/view/tabviewstyle(_:)) modifier.

## Getting built-in tab view styles

- [automatic](/documentation/swiftui/tabviewstyle/automatic)
- [tabBarOnly](/documentation/swiftui/tabviewstyle/tabbaronly)
- [grouped](/documentation/swiftui/tabviewstyle/grouped)
- [page](/documentation/swiftui/tabviewstyle/page)
- [page(indexDisplayMode:)](/documentation/swiftui/tabviewstyle/page(indexdisplaymode:))
- [verticalPage](/documentation/swiftui/tabviewstyle/verticalpage)
- [verticalPage(transitionStyle:)](/documentation/swiftui/tabviewstyle/verticalpage(transitionstyle:))
- [carousel](/documentation/swiftui/tabviewstyle/carousel)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
