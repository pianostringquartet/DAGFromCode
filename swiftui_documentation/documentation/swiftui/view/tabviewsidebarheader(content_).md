---
title: tabViewSidebarHeader(content:)
description: Adds a custom header to the sidebar of a tab view.
source: https://developer.apple.com/documentation/swiftui/view/tabviewsidebarheader(content:)
timestamp: 2025-10-29T00:10:18.955Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# tabViewSidebarHeader(content:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 2.0+

> Adds a custom header to the sidebar of a tab view.

```swift
nonisolated func tabViewSidebarHeader<Content>(@ViewBuilder content: () -> Content) -> some View where Content : View
```

## Discussion

The header appears at the top of the sidebar before any tab labels and can scroll with the content. The header is only visible when the [Tab View](/documentation/swiftui/tabview) is displaying the sidebar.

The following example adds a welcome message to the top of the sidebar:

```swift
TabView {
    Tab("Home", systemImage: "house") {
        HomeView()
    }

    Tab("Alerts", systemImage: "bell") {
        AlertsView()
    }

    Tab("Browse", systemImage: "list.bullet") {
        MyBrowseView()
    }
}
.tabViewStyle(.sidebarAdaptable)
.tabViewSidebarHeader {
    WelcomeHeaderView()
}
```

> [!NOTE]
> To have a sidebar, a[Tab View](/documentation/swiftui/tabview) needs the [sidebar Adaptable](/documentation/swiftui/tabviewstyle/sidebaradaptable) style.

## Configuring a tab bar

- [tabViewSidebarFooter(content:)](/documentation/swiftui/view/tabviewsidebarfooter(content:))
- [tabViewSidebarBottomBar(content:)](/documentation/swiftui/view/tabviewsidebarbottombar(content:))
- [AdaptableTabBarPlacement](/documentation/swiftui/adaptabletabbarplacement)
- [tabBarPlacement](/documentation/swiftui/environmentvalues/tabbarplacement)
- [TabBarPlacement](/documentation/swiftui/tabbarplacement)
- [isTabBarShowingSections](/documentation/swiftui/environmentvalues/istabbarshowingsections)
- [TabBarMinimizeBehavior](/documentation/swiftui/tabbarminimizebehavior)
- [TabViewBottomAccessoryPlacement](/documentation/swiftui/tabviewbottomaccessoryplacement)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
