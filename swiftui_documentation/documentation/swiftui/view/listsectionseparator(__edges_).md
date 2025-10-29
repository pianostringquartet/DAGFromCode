---
title: listSectionSeparator(_:edges:)
description: Sets whether to hide the separator associated with a list section.
source: https://developer.apple.com/documentation/swiftui/view/listsectionseparator(_:edges:)
timestamp: 2025-10-29T00:15:05.519Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# listSectionSeparator(_:edges:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 13.0+, visionOS 1.0+

> Sets whether to hide the separator associated with a list section.

```swift
nonisolated func listSectionSeparator(_ visibility: Visibility, edges: VerticalEdge.Set = .all) -> some View
```

## Parameters

**visibility**

The visibility of this section’s separators.



**edges**

The set of row edges for which the preference applies. The list style might already decide to not display separators for some edges. The default is [all](/documentation/swiftui/verticaledge/set/all).



## Discussion

Separators can be presented above and below a section. You can specify to which edge this preference should apply.

This modifier expresses a preference to the containing [List](/documentation/swiftui/list). The list style is the final arbiter of the separator visibility.

The following example shows a simple grouped list whose bottom sections separator are hidden:

```swift
List {
    ForEach(garage) { garage in
        Section(header: Text(garage.location)) {
            ForEach(garage.cars) { car in
                Text(car.model)
                    .listRowSeparatorTint(car.brandColor)
            }
        }
        .listSectionSeparator(.hidden, edges: .bottom)
    }
}
.listStyle(.grouped)
```

To change the visibility and tint color for a row separator, use [listRowSeparator(_:edges:)](/documentation/swiftui/view/listrowseparator(_:edges:)) and [listRowSeparatorTint(_:edges:)](/documentation/swiftui/view/listrowseparatortint(_:edges:)). To set the tint color for a section separator, use [listSectionSeparatorTint(_:edges:)](/documentation/swiftui/view/listsectionseparatortint(_:edges:)).

## Configuring separators

- [listRowSeparatorTint(_:edges:)](/documentation/swiftui/view/listrowseparatortint(_:edges:))
- [listSectionSeparatorTint(_:edges:)](/documentation/swiftui/view/listsectionseparatortint(_:edges:))
- [listRowSeparator(_:edges:)](/documentation/swiftui/view/listrowseparator(_:edges:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
