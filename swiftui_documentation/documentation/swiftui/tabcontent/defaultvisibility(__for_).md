---
title: defaultVisibility(_:for:)
description: Configures the default visibility of a tab in customizable contexts.
source: https://developer.apple.com/documentation/swiftui/tabcontent/defaultvisibility(_:for:)
timestamp: 2025-10-29T00:13:54.892Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tabcontent](/documentation/swiftui/tabcontent)

**Instance Method**

# defaultVisibility(_:for:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 2.0+

> Configures the default visibility of a tab in customizable contexts.

```swift
nonisolated func defaultVisibility(_ visibility: Visibility, for placements: AdaptableTabBarPlacement...) -> some TabContent<Self.TabValue>
```

## Parameters

**visibility**

The tab’s visibility.



**placements**

The locations to apply the visibility.



## Discussion

The [sidebar Adaptable](/documentation/swiftui/tabviewstyle/sidebaradaptable) style supports customization of the tab bar and sidebar on iPad. To enable customization, attach a [Tab View Customization](/documentation/swiftui/tabviewcustomization) to the [Tab View](/documentation/swiftui/tabview) using [tabViewCustomization(_:)](/documentation/swiftui/view/tabviewcustomization(_:)).

This modifier has no effect on other platforms or on a [Tab View Style](/documentation/swiftui/tabviewstyle) that doesn’t support customization.

> [!NOTE]
> Tabs in the sidebar represent all of the of tabs in [Tab View](/documentation/swiftui/tabview). A tab that’s hidden from the sidebar is also hidden from the top bar.

The following example shows a `TabView` with three tabs, one of which is hidden by default in the sidebar.

```swift
@AppStorage("MyAppTabViewCustomization")
private var customization: TabViewCustomization

TabView(selection: $selection) {
    Tab("Home", systemImage: "house", value: MyTab.home) {
        MyHomeView()
    }
    .customizationID("com.myApp.home")

    Tab("Reports", systemImage: "chart.bar", value: MyTab.reports) {
        MyReportsView()
    }
    .customizationID("com.myApp.reports")

    Tab("Browse", systemImage: "list.bullet", value: MyTab.browse) {
        MyBrowseView()
    }
    .customizationID("com.myApp.browse")
    .defaultVisibility(.hidden, for: .sidebar)
}
.tabViewStyle(.sidebarAdaptable)
.tabViewCustomization($customization)
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
