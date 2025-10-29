---
title: listRowSeparator(_:edges:)
description: Sets the display mode for the separator associated with this specific row.
source: https://developer.apple.com/documentation/swiftui/view/listrowseparator(_:edges:)
timestamp: 2025-10-29T00:11:42.335Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# listRowSeparator(_:edges:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 13.0+, visionOS 1.0+

> Sets the display mode for the separator associated with this specific row.

```swift
nonisolated func listRowSeparator(_ visibility: Visibility, edges: VerticalEdge.Set = .all) -> some View
```

## Parameters

**visibility**

The visibility of this row’s separators.



**edges**

The set of row edges for which this preference applies. The list style might already decide to not display separators for some edges, typically the top edge. The default is [all](/documentation/swiftui/verticaledge/set/all).



## Discussion

Separators can be presented above and below a row. You can specify to which edge this preference should apply.

This modifier expresses a preference to the containing [List](/documentation/swiftui/list). The list style is the final arbiter of the separator visibility.

The following example shows a simple grouped list whose row separators are hidden:

```swift
List {
    ForEach(garage.cars) { car in
        Text(car.model)
            .listRowSeparator(.hidden)
    }
}
.listStyle(.grouped)
```

To change the color of a row separators, use [listRowSeparatorTint(_:edges:)](/documentation/swiftui/view/listrowseparatortint(_:edges:)). To hide or change the tint color for a section separators, use [listSectionSeparator(_:edges:)](/documentation/swiftui/view/listsectionseparator(_:edges:)) and [listSectionSeparatorTint(_:edges:)](/documentation/swiftui/view/listsectionseparatortint(_:edges:)).

## Configuring separators

- [listRowSeparatorTint(_:edges:)](/documentation/swiftui/view/listrowseparatortint(_:edges:))
- [listSectionSeparatorTint(_:edges:)](/documentation/swiftui/view/listsectionseparatortint(_:edges:))
- [listSectionSeparator(_:edges:)](/documentation/swiftui/view/listsectionseparator(_:edges:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
