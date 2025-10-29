---
title: toolbarBackgroundVisibility(_:for:)
description: Specifies the preferred visibility of backgrounds on a bar managed by SwiftUI.
source: https://developer.apple.com/documentation/swiftui/view/toolbarbackgroundvisibility(_:for:)
timestamp: 2025-10-29T00:14:41.640Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# toolbarBackgroundVisibility(_:for:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Specifies the preferred visibility of backgrounds on a bar managed by SwiftUI.

```swift
nonisolated func toolbarBackgroundVisibility(_ visibility: Visibility, for bars: ToolbarPlacement...) -> some View
```

## Parameters

**visibility**

The preferred visibility of the background of the bar.



**bars**

The bars to update the color scheme of or [automatic](/documentation/swiftui/toolbarplacement/automatic) if empty.



## Discussion

The preferred visibility flows up to the nearest container that renders a bar. This could be a [Navigation View](/documentation/swiftui/navigationview) or [Tab View](/documentation/swiftui/tabview) in iOS, or the root view of a [Window Group](/documentation/swiftui/windowgroup) in macOS.

In iOS, a value of [automatic](/documentation/swiftui/toolbarplacement/automatic) makes the visibility of a tab bar or navigation bar background depend on where a [List](/documentation/swiftui/list) or [Scroll View](/documentation/swiftui/scrollview) settles. For example, when aligned to the bottom edge of of a scroll view’s content, the background of a tab bar becomes transparent.

Specify a value of [visible](/documentation/swiftui/visibility/visible) to ensure that the background of a bar remains visible regardless of where any scroll view or list stops scrolling.

This example shows a view that prefers to always have the tab bar visible when the middle tab is selected:

```swift
TabView {
    FirstTab()
    MiddleTab()
        .toolbarBackgroundVisibility(.visible, for: .tabBar)
    LastTab()
}
```

You can provide multiple placements to customize multiple bars at once, as in the following example:

```swift
TabView {
    NavigationView {
        ContentView()
            .toolbarBackgroundVisibility(
                .visible, for: .navigationBar, .tabBar)
    }
}
```

## Setting toolbar visibility

- [toolbar(_:for:)](/documentation/swiftui/view/toolbar(_:for:))
- [toolbarVisibility(_:for:)](/documentation/swiftui/view/toolbarvisibility(_:for:))
- [ToolbarPlacement](/documentation/swiftui/toolbarplacement)
- [ContentToolbarPlacement](/documentation/swiftui/contenttoolbarplacement)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
