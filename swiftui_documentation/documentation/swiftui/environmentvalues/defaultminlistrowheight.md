---
title: defaultMinListRowHeight
description: The default minimum height of rows in a list.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/defaultminlistrowheight
timestamp: 2025-10-29T00:12:10.384Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# defaultMinListRowHeight

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The default minimum height of rows in a list.

```swift
var defaultMinListRowHeight: CGFloat { get set }
```

## Discussion

The height of list rows is bounded below by this default value, and is otherwise determined by the height of the row’s content and the row insets.

## Configuring a list’s layout

- [listRowInsets(_:)](/documentation/swiftui/view/listrowinsets(_:))
- [defaultMinListHeaderHeight](/documentation/swiftui/environmentvalues/defaultminlistheaderheight)
- [listRowSpacing(_:)](/documentation/swiftui/view/listrowspacing(_:))
- [listSectionSpacing(_:)](/documentation/swiftui/view/listsectionspacing(_:))
- [ListSectionSpacing](/documentation/swiftui/listsectionspacing)
- [listSectionMargins(_:_:)](/documentation/swiftui/view/listsectionmargins(_:_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
