---
title: badge(_:)
description: Generates a badge for the view from an integer value.
source: https://developer.apple.com/documentation/swiftui/view/badge(_:)
timestamp: 2025-10-29T00:12:57.667Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# badge(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, visionOS 1.0+

> Generates a badge for the view from an integer value.

```swift
nonisolated func badge(_ count: Int) -> some View
```

## Parameters

**count**

An integer value to display in the badge. Set the value to zero to hide the badge.



## Discussion

Use a badge to convey optional, supplementary information about a view. Keep the contents of the badge as short as possible. Badges appear in list rows, tab bars, toolbar items, and menus.

The following example shows a [List](/documentation/swiftui/list) with the value of `recentItems.count` represented by a badge on one of the rows:

```swift
List {
    Text("Recents")
        .badge(recentItems.count)
    Text("Favorites")
}
```



## Displaying a badge on a list item

- [badgeProminence(_:)](/documentation/swiftui/view/badgeprominence(_:))
- [badgeProminence](/documentation/swiftui/environmentvalues/badgeprominence)
- [BadgeProminence](/documentation/swiftui/badgeprominence)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
