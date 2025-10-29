---
title: customizationID(_:)
description: Sets the identifier for a tab to persist its state.
source: https://developer.apple.com/documentation/swiftui/tabcontent/customizationid(_:)
timestamp: 2025-10-29T00:11:02.004Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tabcontent](/documentation/swiftui/tabcontent)

**Instance Method**

# customizationID(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Sets the identifier for a tab to persist its state.

```swift
nonisolated func customizationID(_ id: String) -> some TabContent<Self.TabValue>
```

## Parameters

**id**

The identifier to associate with a tab or section.



## Discussion

The identifier needs to be stable, including across app version updates.

Only the [sidebar Adaptable](/documentation/swiftui/tabviewstyle/sidebaradaptable) style supports supports customization. To enable customization, attach a [Tab View Customization](/documentation/swiftui/tabviewcustomization) to the [Tab View](/documentation/swiftui/tabview) using [tabViewCustomization(_:)](/documentation/swiftui/view/tabviewcustomization(_:)).

All tabs and tab sections that support customization are required to have a customization ID. You can mark a tab as being non-customizable by specifying a [disabled](/documentation/swiftui/tabcustomizationbehavior/disabled) behavior in all adaptable tab bar placements using [customizationBehavior(_:for:)](/documentation/swiftui/tabcontent/customizationbehavior(_:for:)).

If you apply a customization ID to a [Tab Section](/documentation/swiftui/tabsection), ensure you specify customization IDs for all of the tabs within the section, unless the tab has been marked as having customization turned off.

The following example adds customization identifiers to all tabs and tab sections.

```swift
@AppStorage("MyAppTabViewCustomization")
private var customization: TabViewCustomization

TabView {
    Tab("Home", systemImage: "house") {
        HomeView()
    }
    .customizationID("com.myApp.home")

    Tab("Alerts", systemImage: "bell") {
        AlertsView()
    }
    .customizationID("com.myApp.bell")

    TabSection("Categories") {
        Tab("Climate", systemImage: "fan") {
            ClimateView()
        }
        .customizationID("com.myApp.climate")

        Tab("Lights", systemImage: "lightbulb") {
            LightsView()
        }
        .customizationID("com.myApp.lights")
    }
    .customizationID("com.myApp.categories")
}
.tabViewStyle(.sidebarAdaptable)
.tabViewCustomization($customization)
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
