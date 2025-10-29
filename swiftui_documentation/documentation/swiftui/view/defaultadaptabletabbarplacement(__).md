---
title: defaultAdaptableTabBarPlacement(_:)
description: Specifies the default placement for the tabs in a tab view using the adaptable sidebar style.
source: https://developer.apple.com/documentation/swiftui/view/defaultadaptabletabbarplacement(_:)
timestamp: 2025-10-29T00:14:38.906Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# defaultAdaptableTabBarPlacement(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+

> Specifies the default placement for the tabs in a tab view using the adaptable sidebar style.

```swift
nonisolated func defaultAdaptableTabBarPlacement(_ defaultPlacement: AdaptableTabBarPlacement = .automatic) -> some View
```

## Parameters

**defaultPlacement**

The default arrangement for the tab view.



## Discussion

This modifier is only effective on iPadOS in the [sidebar Adaptable](/documentation/swiftui/tabviewstyle/sidebaradaptable) style. In any other configuration, the system ignores it.

The following example shows a [Tab View](/documentation/swiftui/tabview) with three tabs, where the tab view displays the sidebar representation when the app initially launches.

```swift
TabView(selection: $selection) {
    Tab("Home", systemImage: "house", value: MyTab.home) {
        MyHomeView()
    }

    Tab("Downloads", systemImage: "square.and.arrow.down.fill",
        value: MyTab.downloads
    ) {
        MyDownloadsView()
    }

    Tab("Browse", systemImage: "list.bullet", value: MyTab.browse) {
        MyBrowseView()
    }
}
.tabViewStyle(.sidebarAdaptable)
.defaultAdaptableTabBarPlacement(.sidebar)
```

## Tab views

- [tabViewCustomization(_:)](/documentation/swiftui/view/tabviewcustomization(_:))
- [tabViewSidebarHeader(content:)](/documentation/swiftui/view/tabviewsidebarheader(content:))
- [tabViewSidebarFooter(content:)](/documentation/swiftui/view/tabviewsidebarfooter(content:))
- [tabViewSidebarBottomBar(content:)](/documentation/swiftui/view/tabviewsidebarbottombar(content:))
- [sectionActions(content:)](/documentation/swiftui/view/sectionactions(content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
