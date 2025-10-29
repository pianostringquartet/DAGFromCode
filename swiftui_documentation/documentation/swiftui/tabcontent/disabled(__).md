---
title: disabled(_:)
description: Controls whether users can interact with this tab.
source: https://developer.apple.com/documentation/swiftui/tabcontent/disabled(_:)
timestamp: 2025-10-29T00:11:06.885Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tabcontent](/documentation/swiftui/tabcontent)

**Instance Method**

# disabled(_:)

**Available on:** iOS 18.4+, iPadOS 18.4+, Mac Catalyst 18.4+, macOS 15.4+, tvOS 18.4+, visionOS 2.4+

> Controls whether users can interact with this tab.

```swift
nonisolated func disabled(_ disabled: Bool) -> some TabContent<Self.TabValue>
```

## Parameters

**disabled**

A Boolean value that determines whether users can interact with this tab.



## Discussion

The following example shows a [Tab View](/documentation/swiftui/tabview) with one tab that is not selectable.

```swift
TabView {
    Tab("Home", systemImage: "house") {
        HomeView()
    }
    Tab("Alerts", systemImage: "bell") {
        AlertsView()
    }
    .disabled(alertsDisabled)
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
