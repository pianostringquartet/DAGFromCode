---
title: listRowSpacing(_:)
description: Sets the vertical spacing between two adjacent rows in a List.
source: https://developer.apple.com/documentation/swiftui/view/listrowspacing(_:)
timestamp: 2025-10-29T00:10:31.654Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# listRowSpacing(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, visionOS 1.0+

> Sets the vertical spacing between two adjacent rows in a List.

```swift
nonisolated func listRowSpacing(_ spacing: CGFloat?) -> some View
```

## Parameters

**spacing**

The spacing value to use. A value of `nil` uses the default spacing.



## Discussion

The following example creates a List with 10 pts of spacing between each row:

```swift
List {
    Text("Blue")
    Text("Red")
}
.listRowSpacing(10.0)
```

## Configuring a list’s layout

- [listRowInsets(_:)](/documentation/swiftui/view/listrowinsets(_:))
- [defaultMinListRowHeight](/documentation/swiftui/environmentvalues/defaultminlistrowheight)
- [defaultMinListHeaderHeight](/documentation/swiftui/environmentvalues/defaultminlistheaderheight)
- [listSectionSpacing(_:)](/documentation/swiftui/view/listsectionspacing(_:))
- [ListSectionSpacing](/documentation/swiftui/listsectionspacing)
- [listSectionMargins(_:_:)](/documentation/swiftui/view/listsectionmargins(_:_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
