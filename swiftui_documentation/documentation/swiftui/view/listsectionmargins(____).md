---
title: listSectionMargins(_:_:)
description: Set the section margins for the specific edges.
source: https://developer.apple.com/documentation/swiftui/view/listsectionmargins(_:_:)
timestamp: 2025-10-29T00:12:50.603Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# listSectionMargins(_:_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, visionOS 26.0+

> Set the section margins for the specific edges.

```swift
nonisolated func listSectionMargins(_ edges: Edge.Set = .all, _ length: CGFloat?) -> some View
```

## Parameters

**edges**

The set of edges to pad for sections in this view. The default is [all](/documentation/swiftui/edge/set/all).



**length**

An amount, given in points, to pad section on the specified edges.



## Return Value

A view in which the margins of list sections are set to the specified amount on the specified edges.

## Discussion

Use this modifier on a list section to set customize its margins. Indicate the edges to set the margin of by naming either a single value from  [Set](/documentation/swiftui/edge/set), or by specifying an [Option Set](/documentation/Swift/OptionSet) that contains edge values. Margins for the other edges remain unchanged.

The default section margins are based on the list style, list section spacing and content margins of the list. Using this modifier overrides these default values completely.

For sections that have headers or footers, the section margins are applied around these.

## Configuring a list’s layout

- [listRowInsets(_:)](/documentation/swiftui/view/listrowinsets(_:))
- [defaultMinListRowHeight](/documentation/swiftui/environmentvalues/defaultminlistrowheight)
- [defaultMinListHeaderHeight](/documentation/swiftui/environmentvalues/defaultminlistheaderheight)
- [listRowSpacing(_:)](/documentation/swiftui/view/listrowspacing(_:))
- [listSectionSpacing(_:)](/documentation/swiftui/view/listsectionspacing(_:))
- [ListSectionSpacing](/documentation/swiftui/listsectionspacing)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
