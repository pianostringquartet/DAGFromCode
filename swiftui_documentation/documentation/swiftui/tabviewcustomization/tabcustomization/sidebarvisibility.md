---
title: sidebarVisibility
description: The visibility of the tab in the sidebar.
source: https://developer.apple.com/documentation/swiftui/tabviewcustomization/tabcustomization/sidebarvisibility
timestamp: 2025-10-29T00:10:51.436Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tabviewcustomization](/documentation/swiftui/tabviewcustomization) › [tabcustomization](/documentation/swiftui/tabviewcustomization/tabcustomization)

**Instance Property**

# sidebarVisibility

**Available on:** iOS 18.4+, iPadOS 18.4+, Mac Catalyst 18.4+, macOS 15.4+, visionOS 2.4+

> The visibility of the tab in the sidebar.

```swift
var sidebarVisibility: Visibility { get set }
```

## Discussion

Visibility can be set imperatively by subscripting with the tab’s id:

```swift
customization[tab: "com.myApp.alerts"].sidebarVisibility = .hidden
```

You can change the default visibility by using `TabContent/defaultVisibility(_:for)` with a `AdaptableTabBarPlacement.sidebar` placement.

```swift
Tab("Alerts", systemImage: "bell", value: .alerts) {
    AlertsView()
}
.customizationID("com.myApp.alerts")
.defaultVisibility(.hidden, for: .sidebar)
```

If the ID isn’t associated with a tab or the tab has not been customized, a default value of `.automatic` is returned.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
