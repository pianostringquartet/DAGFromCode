---
title: badgeProminence(_:)
description: Specifies the prominence of badges created by this view.
source: https://developer.apple.com/documentation/swiftui/view/badgeprominence(_:)
timestamp: 2025-10-29T00:13:33.806Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# badgeProminence(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> Specifies the prominence of badges created by this view.

```swift
nonisolated func badgeProminence(_ prominence: BadgeProminence) -> some View
```

## Parameters

**prominence**

The prominence to apply to badges.



## Discussion

Badges can be used for different kinds of information, from the passive number of items in a container to the number of required actions. The prominence of badges in Lists can be adjusted to reflect this and be made to draw more or less attention to themselves.

Badges will default to `standard` prominence unless specified.

The following example shows a [List](/documentation/swiftui/list) displaying a list of folders with an informational badge with lower prominence, showing the number of items in the folder.

```swift
List(folders) { folder in
    Text(folder.name)
        .badge(folder.numberOfItems)
}
.badgeProminence(.decreased)
```

## Displaying a badge on a list item

- [badge(_:)](/documentation/swiftui/view/badge(_:))
- [badgeProminence](/documentation/swiftui/environmentvalues/badgeprominence)
- [BadgeProminence](/documentation/swiftui/badgeprominence)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
