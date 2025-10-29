---
title: listRowInsets(_:_:)
description: Sets the insets of rows in a list on the specified edges.
source: https://developer.apple.com/documentation/swiftui/view/listrowinsets(_:_:)
timestamp: 2025-10-29T00:09:42.288Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# listRowInsets(_:_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Sets the insets of rows in a list on the specified edges.

```swift
nonisolated func listRowInsets(_ edges: Edge.Set = .all, _ length: CGFloat?) -> some View
```

## Parameters

**edges**

The edges to set the insets to.



**length**

An amount, given in points, to set the insets to on the specified edges.



## Return Value

A view in which the margins of list sections are set to the specified amount

## Discussion

Use this modifier to change the default insets of list rows on the specified edges.

In the example below, the `Flavor` enumeration provides content for list items. The SwiftUI [For Each](/documentation/swiftui/foreach) structure computes views for each element of the `Flavor` enumeration and extracts the raw value of each of its elements using the resulting text to create each list row item. The `listRowInsets(_:_:)` modifier then changes the leading inset of each row of the list and leaves the default insets on the other edges untouched:

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
                    .listRowInsets(.leading, 25)
            }
        }
    }
}
```



When applying multiple `listRowInsets` modifiers, modifiers with the same edges will override modifiers higher up in the view hierarchy.

> [!NOTE]
> On iOS 18 and earlier, and on visionOS 2 and earlier, the content of list rows can grow slightly into the row insets. The effective vertical insets can then be smaller than expected.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
