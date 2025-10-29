---
title: badge(_:)
description: Generates a badge for a tab from an integer value.
source: https://developer.apple.com/documentation/swiftui/tabcontent/badge(_:)
timestamp: 2025-10-29T00:10:42.702Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tabcontent](/documentation/swiftui/tabcontent)

**Instance Method**

# badge(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 2.0+

> Generates a badge for a tab from an integer value.

```swift
nonisolated func badge(_ count: Int) -> some TabContent<Self.TabValue>
```

## Parameters

**count**

An integer value to display in the badge. Set the value to zero to hide the badge.



## Discussion

Use a badge to convey optional, supplementary information about a view. The number provided will appear as a numerical indicator on the given tab.

The following example shows a [Tab View](/documentation/swiftui/tabview) with the value of `alerts.count` displayed as a badge on the alerts tab.

```swift
TabView {
    Tab("Home", systemImage: "house") {
        HomeView()
    }
    Tab("Alerts", systemImage: "bell") {
        AlertsView()
    }
    .badge(alerts.count)
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
