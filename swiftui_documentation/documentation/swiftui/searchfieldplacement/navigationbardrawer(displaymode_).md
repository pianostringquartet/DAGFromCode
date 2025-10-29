---
title: navigationBarDrawer(displayMode:)
description: The search field appears in the navigation bar using the specified display mode.
source: https://developer.apple.com/documentation/swiftui/searchfieldplacement/navigationbardrawer(displaymode:)
timestamp: 2025-10-29T00:10:25.348Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [searchfieldplacement](/documentation/swiftui/searchfieldplacement)

**Type Method**

# navigationBarDrawer(displayMode:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, visionOS 1.0+

> The search field appears in the navigation bar using the specified display mode.

```swift
static func navigationBarDrawer(displayMode: SearchFieldPlacement.NavigationBarDrawerDisplayMode) -> SearchFieldPlacement
```

## Parameters

**displayMode**

A control that indicates whether to hide the search field in response to scrolling.



## Discussion

The field appears below any navigation bar title. The system can hide the field in response to scrolling, depending on the `displayMode` that you set.

## Getting a search field placement

- [automatic](/documentation/swiftui/searchfieldplacement/automatic)
- [navigationBarDrawer](/documentation/swiftui/searchfieldplacement/navigationbardrawer)
- [sidebar](/documentation/swiftui/searchfieldplacement/sidebar)
- [toolbar](/documentation/swiftui/searchfieldplacement/toolbar)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
