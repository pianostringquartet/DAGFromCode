---
title: tabViewCustomization(_:)
description: Specifies the customizations to apply to the sidebar representation of the tab view.
source: https://developer.apple.com/documentation/swiftui/view/tabviewcustomization(_:)
timestamp: 2025-10-29T00:10:33.809Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# tabViewCustomization(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 2.0+

> Specifies the customizations to apply to the sidebar representation of the tab view.

```swift
nonisolated func tabViewCustomization(_ customization: Binding<TabViewCustomization>?) -> some View
```

## Parameters

**customization**

The customization object to store user customization in.



## Discussion

Only the [sidebar Adaptable](/documentation/swiftui/tabviewstyle/sidebaradaptable) style supports supports customization. Specifying a non-nil [Tab View Customization](/documentation/swiftui/tabviewcustomization) object using this modifier enables customization.

By default, if a person hasn’t made customizations, tabs appear according to the default builder visibilities and sections appear in the order you declare in the tab view’s tab builder.

You can change the default visibility by using the [defaultVisibility(_:for:)](/documentation/swiftui/tabcontent/defaultvisibility(_:for:)) with a [sidebar](/documentation/swiftui/adaptabletabbarplacement/sidebar) placement.

You can change the default section order by changing the order in the builder. If there’s an existing persisted customization, reset the order by calling [resetTabOrder()](/documentation/swiftui/tabviewcustomization/sectioncustomization/resettaborder()) when you change the order.

All tabs and tab sections that support customization need to have a customization ID. You can mark a tab as being non-customizable by specifying a [disabled](/documentation/swiftui/tabcustomizationbehavior/disabled) behavior in all adaptable tab bar placements using [customizationBehavior(_:for:)](/documentation/swiftui/tabcontent/customizationbehavior(_:for:)).

On macOS, a default interaction is provided for reordering sections but not for controlling the visibility of individual tabs. A custom experience should be provided if desired by setting the visibility of the tab on the customization.

The following code example uses `@AppStorage` to automatically persist any visibility or section order customizations a person makes.

```swift
@AppStorage
private var customization: TabViewCustomization

TabView {
    Tab("Home", systemImage: "house") {
        MyHomeView()
    }
    .customizationID("com.myApp.home")

    Tab("Reports", systemImage: "chart.bar") {
        MyReportsView()
    }
    .customizationID("com.myApp.reports")

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
    .customizationID("com.myApp.browse")
}
.tabViewStyle(.sidebarAdaptable)
.tabViewCustomization($customization)
```

## Enabling tab customization

- [TabViewCustomization](/documentation/swiftui/tabviewcustomization)
- [TabCustomizationBehavior](/documentation/swiftui/tabcustomizationbehavior)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
