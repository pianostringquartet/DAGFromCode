---
title: toolbar(_:for:)
description: Specifies the visibility of a bar managed by SwiftUI.
source: https://developer.apple.com/documentation/swiftui/view/toolbar(_:for:)
timestamp: 2025-10-29T00:12:07.844Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# toolbar(_:for:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Specifies the visibility of a bar managed by SwiftUI.

```swift
nonisolated func toolbar(_ visibility: Visibility, for bars: ToolbarPlacement...) -> some View
```

## Parameters

**visibility**

The preferred visibility of the bar.



**bars**

The bars to update the visibility of or [automatic](/documentation/swiftui/toolbarplacement/automatic) if empty.



## Discussion

The preferred visibility flows up to the nearest container that renders a bar. This could be a [Navigation View](/documentation/swiftui/navigationview) or [Tab View](/documentation/swiftui/tabview) in iOS, or the root view of a [Window Group](/documentation/swiftui/windowgroup) in macOS.

This examples shows a view that hides the navigation bar on iOS, or the window toolbar items on macOS.

```swift
NavigationView {
    ContentView()
        .toolbar(.hidden)
}
```

To hide the entire titlebar on macOS, use this modifier with [window Toolbar](/documentation/swiftui/toolbarplacement/windowtoolbar) placement.

```swift
NavigationView {
    ContentView()
        .toolbar(.hidden, for: .windowToolbar)
}
```

You can provide multiple [Toolbar Placement](/documentation/swiftui/toolbarplacement) instances to hide multiple bars at once.

```swift
TabView {
    NavigationView {
        ContentView()
            .toolbar(
                .hidden, for: .navigationBar, .tabBar)
    }
}
```

> [!NOTE]
> In macOS, if you provide [Toolbar Commands](/documentation/swiftui/toolbarcommands) to the scene of your app, this modifier disables the toolbar visibility command while the value of the modifier is not [automatic](/documentation/swiftui/toolbarplacement/automatic).

Depending on the specified bars, the requested visibility may not be able to be fulfilled.

## Setting toolbar visibility

- [toolbarVisibility(_:for:)](/documentation/swiftui/view/toolbarvisibility(_:for:))
- [toolbarBackgroundVisibility(_:for:)](/documentation/swiftui/view/toolbarbackgroundvisibility(_:for:))
- [ToolbarPlacement](/documentation/swiftui/toolbarplacement)
- [ContentToolbarPlacement](/documentation/swiftui/contenttoolbarplacement)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
