---
title: BadgeProminence
description: The visual prominence of a badge.
source: https://developer.apple.com/documentation/swiftui/badgeprominence
timestamp: 2025-10-29T00:12:35.751Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# BadgeProminence

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> The visual prominence of a badge.

```swift
struct BadgeProminence
```

## Overview

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

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting background prominence

- [standard](/documentation/swiftui/badgeprominence/standard) The standard level of prominence for a badge.
- [increased](/documentation/swiftui/badgeprominence/increased) The highest level of prominence for a badge.
- [decreased](/documentation/swiftui/badgeprominence/decreased) The lowest level of prominence for a badge.

## Displaying a badge on a list item

- [badge(_:)](/documentation/swiftui/view/badge(_:))
- [badgeProminence(_:)](/documentation/swiftui/view/badgeprominence(_:))
- [badgeProminence](/documentation/swiftui/environmentvalues/badgeprominence)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
