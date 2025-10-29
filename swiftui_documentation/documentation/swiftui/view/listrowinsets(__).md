---
title: listRowInsets(_:)
description: Applies an inset to the rows in a list.
source: https://developer.apple.com/documentation/swiftui/view/listrowinsets(_:)
timestamp: 2025-10-29T00:11:08.282Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# listRowInsets(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Applies an inset to the rows in a list.

```swift
nonisolated func listRowInsets(_ insets: EdgeInsets?) -> some View
```

## Parameters

**insets**

The [Edge Insets](/documentation/swiftui/edgeinsets) to apply to the edges of the view.



## Return Value

A view that uses the given edge insets when used as a list cell.

## Discussion

Use `listRowInsets(_:)` to change the default padding of the content of list items.

In the example below, the `Flavor` enumeration provides content for list items. The SwiftUI [For Each](/documentation/swiftui/foreach) structure computes views for each element of the `Flavor` enumeration and extracts the raw value of each of its elements using the resulting text to create each list row item. The `listRowInsets(_:)` modifier then changes the edge insets of each row of the list according to the [Edge Insets](/documentation/swiftui/edgeinsets) provided:

```swift
struct ContentView: View {
    enum Flavor: String, CaseIterable, Identifiable {
        var id: String { self.rawValue }
        case vanilla, chocolate, strawberry
    }

    var body: some View {
        List {
            ForEach(Flavor.allCases) {
                Text($0.rawValue)
                    .listRowInsets(.init(top: 0,
                                         leading: 25,
                                         bottom: 0,
                                         trailing: 0))
            }
        }
    }
}
```



> [!NOTE]
> On iOS 18 and earlier, and on visionOS 2 and earlier, the content of list rows can grow slightly into the row insets. The effective vertical insets can then be smaller than expected.

## Configuring a list’s layout

- [defaultMinListRowHeight](/documentation/swiftui/environmentvalues/defaultminlistrowheight)
- [defaultMinListHeaderHeight](/documentation/swiftui/environmentvalues/defaultminlistheaderheight)
- [listRowSpacing(_:)](/documentation/swiftui/view/listrowspacing(_:))
- [listSectionSpacing(_:)](/documentation/swiftui/view/listsectionspacing(_:))
- [ListSectionSpacing](/documentation/swiftui/listsectionspacing)
- [listSectionMargins(_:_:)](/documentation/swiftui/view/listsectionmargins(_:_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
