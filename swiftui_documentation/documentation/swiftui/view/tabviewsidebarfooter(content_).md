---
title: tabViewSidebarFooter(content:)
description: Adds a custom footer to the sidebar of a tab view.
source: https://developer.apple.com/documentation/swiftui/view/tabviewsidebarfooter(content:)
timestamp: 2025-10-29T00:12:09.874Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# tabViewSidebarFooter(content:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 2.0+

> Adds a custom footer to the sidebar of a tab view.

```swift
nonisolated func tabViewSidebarFooter<Content>(@ViewBuilder content: () -> Content) -> some View where Content : View
```

## Discussion

The footer appears at the bottom of the sidebar after any tab labels and can scroll with the content. The footer is only visible when the [Tab View](/documentation/swiftui/tabview) is displaying the sidebar.

The following example adds a link to contact support to the bottom of the sidebar content:

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
.tabViewSidebarFooter {
    ContactSupportLink()
}
```

## Configuring a tab bar

- [tabViewSidebarHeader(content:)](/documentation/swiftui/view/tabviewsidebarheader(content:))
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
