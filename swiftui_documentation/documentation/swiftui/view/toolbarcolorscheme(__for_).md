---
title: toolbarColorScheme(_:for:)
description: Specifies the preferred color scheme of a bar managed by SwiftUI.
source: https://developer.apple.com/documentation/swiftui/view/toolbarcolorscheme(_:for:)
timestamp: 2025-10-29T00:15:05.895Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# toolbarColorScheme(_:for:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Specifies the preferred color scheme of a bar managed by SwiftUI.

```swift
nonisolated func toolbarColorScheme(_ colorScheme: ColorScheme?, for bars: ToolbarPlacement...) -> some View
```

## Parameters

**colorScheme**

The preferred color scheme of the background of the bar.



**bars**

The bars to update the color scheme of or [automatic](/documentation/swiftui/toolbarplacement/automatic) if empty.



## Discussion

The preferred color scheme flows up to the nearest container that renders a bar. This could be a [Navigation View](/documentation/swiftui/navigationview) or [Tab View](/documentation/swiftui/tabview) in iOS, or the root view of a [Window Group](/documentation/swiftui/windowgroup) in macOS. Pass in a value of nil to match the current system’s color scheme.

This examples shows a view that renders the navigation bar with a blue background and dark color scheme:

```swift
TabView {
    NavigationView {
        ContentView()
            .toolbarBackground(.blue)
            .toolbarColorScheme(.dark)
    }
    // other tabs...
}
```

You can provide multiple [Toolbar Placement](/documentation/swiftui/toolbarplacement) instances to customize multiple bars at once.

```swift
TabView {
    NavigationView {
        ContentView()
            .toolbarBackground(
                .blue, for: .navigationBar, .tabBar)
            .toolbarColorScheme(
                .dark, for: .navigationBar, .tabBar)
    }
}
```

Note that the provided color scheme is only respected while a background is visible in the requested bar. As the background becomes visible, the bar transitions from the color scheme of the app to the requested color scheme. You can ensure that the color scheme is always respected by specifying that the background of the bar always be visible.

```swift
NavigationView {
    ContentView()
        .toolbarBackground(.visible)
        .toolbarColorScheme(.dark)
}
```

Depending on the specified bars, the requested color scheme may not be able to be fullfilled.

## Styling a toolbar

- [toolbarBackground(_:for:)](/documentation/swiftui/view/toolbarbackground(_:for:))
- [toolbarForegroundStyle(_:for:)](/documentation/swiftui/view/toolbarforegroundstyle(_:for:))
- [windowToolbarStyle(_:)](/documentation/swiftui/scene/windowtoolbarstyle(_:))
- [WindowToolbarStyle](/documentation/swiftui/windowtoolbarstyle)
- [toolbarLabelStyle](/documentation/swiftui/environmentvalues/toolbarlabelstyle)
- [ToolbarLabelStyle](/documentation/swiftui/toolbarlabelstyle)
- [SpacerSizing](/documentation/swiftui/spacersizing)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
