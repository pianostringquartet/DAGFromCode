---
title: listSectionSeparatorTint(_:edges:)
description: Sets the tint color associated with a section.
source: https://developer.apple.com/documentation/swiftui/view/listsectionseparatortint(_:edges:)
timestamp: 2025-10-29T00:09:28.113Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# listSectionSeparatorTint(_:edges:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 13.0+, visionOS 1.0+

> Sets the tint color associated with a section.

```swift
nonisolated func listSectionSeparatorTint(_ color: Color?, edges: VerticalEdge.Set = .all) -> some View
```

## Parameters

**color**

The color to use to tint the section separators, or `nil` to use the default color for the current list style.



**edges**

The set of row edges for which the tint applies. The list style might decide to not display certain separators, typically the top edge. The default is [all](/documentation/swiftui/verticaledge/set/all).



## Discussion

Separators can be presented above and below a section. You can specify to which edge this preference should apply.

This modifier expresses a preference to the containing [List](/documentation/swiftui/list). The list style is the final arbiter for the separator tint.

The following example shows a simple grouped list whose section separators are tinted based on section-specific data:

```swift
List {
    ForEach(garage) { garage in
        Section(header: Text(garage.location)) {
            ForEach(garage.cars) { car in
                Text(car.model)
                    .listRowSeparatorTint(car.brandColor)
            }
        }
        .listSectionSeparatorTint(
            garage.cars.last?.brandColor, edges: .bottom)
    }
}
.listStyle(.grouped)
```

To change the visibility and tint color for a row separator, use [listRowSeparator(_:edges:)](/documentation/swiftui/view/listrowseparator(_:edges:)) and [listRowSeparatorTint(_:edges:)](/documentation/swiftui/view/listrowseparatortint(_:edges:)). To hide a section separator, use [listSectionSeparator(_:edges:)](/documentation/swiftui/view/listsectionseparator(_:edges:)).

## Configuring separators

- [listRowSeparatorTint(_:edges:)](/documentation/swiftui/view/listrowseparatortint(_:edges:))
- [listRowSeparator(_:edges:)](/documentation/swiftui/view/listrowseparator(_:edges:))
- [listSectionSeparator(_:edges:)](/documentation/swiftui/view/listsectionseparator(_:edges:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
