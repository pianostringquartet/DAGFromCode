---
title: sectionActions(content:)
description: Adds custom actions to a section.
source: https://developer.apple.com/documentation/swiftui/view/sectionactions(content:)
timestamp: 2025-10-29T00:11:22.627Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# sectionActions(content:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 2.0+

> Adds custom actions to a section.

```swift
nonisolated func sectionActions<Content>(@ViewBuilder content: () -> Content) -> some View where Content : View
```

## Discussion

On iOS, the actions are displayed as items after the content of the section. On macOS, the actions are displayed when a user hovers over the section.

The following example adds an ‘Add’ button to the ‘Categories’ section.

```swift
List {
    Label("Home", systemImage: "house")
    Label("Alerts", systemImage: "bell")

    Section("Categories") {
        Label("Climate", systemImage: "fan")
        Label("Lights", systemImage: "lightbulb")
    }
    .sectionActions {
        Button("Add Category", systemImage: "plus") { }
    }
}
```

## Configuring a tab

- [TabPlacement](/documentation/swiftui/tabplacement)
- [TabContentBuilder](/documentation/swiftui/tabcontentbuilder)
- [TabContent](/documentation/swiftui/tabcontent)
- [AnyTabContent](/documentation/swiftui/anytabcontent)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
