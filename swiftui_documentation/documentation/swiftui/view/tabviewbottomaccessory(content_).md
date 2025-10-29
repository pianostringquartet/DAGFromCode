---
title: tabViewBottomAccessory(content:)
description: Places a view as the bottom accessory of the tab view.
source: https://developer.apple.com/documentation/swiftui/view/tabviewbottomaccessory(content:)
timestamp: 2025-10-29T00:11:27.940Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# tabViewBottomAccessory(content:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+

> Places a view as the bottom accessory of the tab view.

```swift
nonisolated func tabViewBottomAccessory<Content>(@ViewBuilder content: () -> Content) -> some View where Content : View
```

## Discussion

The following example sets a status view as the `TabView` bottom accessory.

```swift
TabView {
    Tab("Home", systemImage: "house") {
        HomeView()
    }

    Tab("Alerts", systemImage: "bell") {
        AlertsView()
    }

    TabSection("Categories") {
        Tab("Climate", systemImage: "fan") {
            ClimateView()
        }

        Tab("Lights", systemImage: "lightbulb") {
            LightsView()
        }
    }
}
.tabViewBottomAccessory {
    HomeStatusView()
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
