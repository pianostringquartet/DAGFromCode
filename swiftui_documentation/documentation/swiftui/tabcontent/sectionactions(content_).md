---
title: sectionActions(content:)
description: Adds custom actions to a tab section.
source: https://developer.apple.com/documentation/swiftui/tabcontent/sectionactions(content:)
timestamp: 2025-10-29T00:12:31.075Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tabcontent](/documentation/swiftui/tabcontent)

**Instance Method**

# sectionActions(content:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+

> Adds custom actions to a tab section.

```swift
nonisolated func sectionActions<Content>(@ViewBuilder content: () -> Content) -> some TabContent<Self.TabValue> where Content : View
```

## Discussion

On iOS, the actions are displayed after the other tabs in the section. On macOS, the actions are displayed when a user hovers over the section.

Applying this modifier to a single [Tab](/documentation/swiftui/tab) has no effect.

The following example adds an ‘Add’ button to the ‘Categories’ section.

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
    .sectionActions {
        Button("Add Category", systemImage: "plus") { }
    }
}
.tabViewStyle(.sidebarAdaptable)
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
