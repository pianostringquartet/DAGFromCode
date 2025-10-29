---
title: toolbarBackground(_:for:)
description: Specifies the preferred shape style of the background of a bar managed by SwiftUI.
source: https://developer.apple.com/documentation/swiftui/view/toolbarbackground(_:for:)
timestamp: 2025-10-29T00:14:48.567Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# toolbarBackground(_:for:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Specifies the preferred shape style of the background of a bar managed by SwiftUI.

```swift
nonisolated func toolbarBackground<S>(_ style: S, for bars: ToolbarPlacement...) -> some View where S : ShapeStyle
```

## Parameters

**style**

The style to display as the background of the bar.



**bars**

The bars to use the style for or [automatic](/documentation/swiftui/toolbarplacement/automatic) if empty.



## Discussion

The preferred style flows up to the nearest container that renders a bar. This could be a [Navigation View](/documentation/swiftui/navigationview) or [Tab View](/documentation/swiftui/tabview) in iOS, or the root view of a [Window Group](/documentation/swiftui/windowgroup) in macOS. This example shows a view that renders the navigation bar with a blue background and dark color scheme.

```swift
NavigationView {
    ContentView()
        .toolbarBackground(.white)
        .toolbarColorScheme(.dark)
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

When used within a [Tab View](/documentation/swiftui/tabview), the specified style will be preferred while the tab is currently active. You can use a [Group](/documentation/swiftui/group) to specify the same preferred background for every tab.

```swift
TabView {
    Group {
        MainView()
        SettingsView()
    }
    .toolbarBackground(.blue, for: .tabBar)
}
```

Depending on the specified bars, the requested style may not be able to be fullfilled.

## Styling a toolbar

- [toolbarColorScheme(_:for:)](/documentation/swiftui/view/toolbarcolorscheme(_:for:))
- [toolbarForegroundStyle(_:for:)](/documentation/swiftui/view/toolbarforegroundstyle(_:for:))
- [windowToolbarStyle(_:)](/documentation/swiftui/scene/windowtoolbarstyle(_:))
- [WindowToolbarStyle](/documentation/swiftui/windowtoolbarstyle)
- [toolbarLabelStyle](/documentation/swiftui/environmentvalues/toolbarlabelstyle)
- [ToolbarLabelStyle](/documentation/swiftui/toolbarlabelstyle)
- [SpacerSizing](/documentation/swiftui/spacersizing)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
