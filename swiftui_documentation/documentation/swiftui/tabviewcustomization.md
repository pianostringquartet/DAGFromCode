---
title: TabViewCustomization
description: The customizations a person makes to an adaptable sidebar tab view.
source: https://developer.apple.com/documentation/swiftui/tabviewcustomization
timestamp: 2025-10-29T00:14:11.095Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# TabViewCustomization

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 2.0+

> The customizations a person makes to an adaptable sidebar tab view.

```swift
struct TabViewCustomization
```

## Overview

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

## Conforms To

- [Decodable](/documentation/Swift/Decodable)
- [Encodable](/documentation/Swift/Encodable)
- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Structures

- [TabViewCustomization.SectionCustomization](/documentation/swiftui/tabviewcustomization/sectioncustomization) The customizations a user has made to a .
- [TabViewCustomization.TabCustomization](/documentation/swiftui/tabviewcustomization/tabcustomization) The customizations a user has made to a .

## Initializers

- [init()](/documentation/swiftui/tabviewcustomization/init()) Creates an empty tab sidebar customization.

## Instance Methods

- [resetSectionOrder()](/documentation/swiftui/tabviewcustomization/resetsectionorder()) Resets ordering back to the default for all sections, preserving the customized tab visibilities.
- [resetSectionOrder(for:)](/documentation/swiftui/tabviewcustomization/resetsectionorder(for:)) Resets ordering back to the default for the section with , preserving any customized tab visibilities.
- [resetVisibility()](/documentation/swiftui/tabviewcustomization/resetvisibility()) Resets all tab sidebar visibilities back to the default, preserving the section customizations.

## Subscripts

- [subscript(section:)](/documentation/swiftui/tabviewcustomization/subscript(section:)) The customization of the section, identified by its customization identifier.
- [subscript(sectionID:)](/documentation/swiftui/tabviewcustomization/subscript(sectionid:)) The customization for a section’s children, identified by the section’s customization identifier.
- [subscript(sidebarVisibility:)](/documentation/swiftui/tabviewcustomization/subscript(sidebarvisibility:)) The visibility of the tab identified by its customization identifier.
- [subscript(tab:)](/documentation/swiftui/tabviewcustomization/subscript(tab:)) The customization of the tab, identified by its customization identifier.

## Enabling tab customization

- [tabViewCustomization(_:)](/documentation/swiftui/view/tabviewcustomization(_:))
- [TabCustomizationBehavior](/documentation/swiftui/tabcustomizationbehavior)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
