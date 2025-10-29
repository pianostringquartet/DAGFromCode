---
title: subscript(sidebarVisibility:)
description: The visibility of the tab identified by its customization identifier.
source: https://developer.apple.com/documentation/swiftui/tabviewcustomization/subscript(sidebarvisibility:)
timestamp: 2025-10-29T00:12:13.379Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tabviewcustomization](/documentation/swiftui/tabviewcustomization)

**Instance Subscript**

# subscript(sidebarVisibility:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 2.0+

> The visibility of the tab identified by its customization identifier.

```swift
subscript(sidebarVisibility id: String) -> Visibility { get set }
```

## Overview

Visibility can be set imperatively by subscripting with the tab’s id:

```swift
customization[sidebarVisibility: "com.myApp.alerts"] = .hidden
```

You can change the default visibility by using the [defaultVisibility(_:for:)](/documentation/swiftui/tabcontent/defaultvisibility(_:for:)) with a [sidebar](/documentation/swiftui/adaptabletabbarplacement/sidebar) placement.

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
