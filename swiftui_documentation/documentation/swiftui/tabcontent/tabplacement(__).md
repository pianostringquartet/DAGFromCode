---
title: tabPlacement(_:)
description: Specifies the placement of a tab.
source: https://developer.apple.com/documentation/swiftui/tabcontent/tabplacement(_:)
timestamp: 2025-10-29T00:11:32.395Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tabcontent](/documentation/swiftui/tabcontent)

**Instance Method**

# tabPlacement(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Specifies the placement of a tab.

```swift
nonisolated func tabPlacement(_ placement: TabPlacement) -> some TabContent<Self.TabValue>
```

## Parameters

**placement**

The location of the tab.



## Discussion

The following example shows a [Tab View](/documentation/swiftui/tabview) with three tabs where the second tab is pinned to the trailing edge of the top tab bar on iPad.

```swift
TabView {
    Tab("Home", systemImage: "house") {
        MyHomeView()
    }

    Tab("Downloads", systemImage: "square.and.arrow.down.fill") {
        MyDownloadsView()
    }
    .tabPlacement(.pinned)

    Tab("Browse", systemImage: "list.bullet") {
        MyBrowseView()
    }
}
.tabViewStyle(.sidebarAdaptable)
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
