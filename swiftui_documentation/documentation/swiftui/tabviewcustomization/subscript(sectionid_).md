---
title: subscript(sectionID:)
description: The customization for a section’s children, identified by the section’s customization identifier.
source: https://developer.apple.com/documentation/swiftui/tabviewcustomization/subscript(sectionid:)
timestamp: 2025-10-29T00:15:35.222Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tabviewcustomization](/documentation/swiftui/tabviewcustomization)

**Instance Subscript**

# subscript(sectionID:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 2.0+

> The customization for a section’s children, identified by the section’s customization identifier.

```swift
subscript(sectionID id: String) -> [String]? { get }
```

## Overview

Section order can be read by subscripting with the tab section’s id:

```swift
let order = customization[sectionID: "com.myApp.categories"]
```

Identifiers can be associated with a `Tab` or `TabSection` using the `customizationID(_:)` modifier.

```swift
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
```

If the ID isn’t associated with a section or the section has not been customized, a default value of `nil` is returned.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
