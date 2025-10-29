---
title: listRowSeparatorLeading
description: A guide marking the leading edge of a  row separator.
source: https://developer.apple.com/documentation/swiftui/horizontalalignment/listrowseparatorleading
timestamp: 2025-10-29T00:10:37.328Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [horizontalalignment](/documentation/swiftui/horizontalalignment)

**Type Property**

# listRowSeparatorLeading

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+

> A guide marking the leading edge of a  row separator.

```swift
static let listRowSeparatorLeading: HorizontalAlignment
```

## Discussion

Use this guide to align the leading end of the bottom `List` row separator with any other horizontal guide of a view that is part of the cell content.

The following example shows the row separator aligned with the leading edge of the `Text` containing the name of food:

```swift
List {
    ForEach(favoriteFoods) { food in
        HStack {
            Text(food.emoji)
                .font(.system(size: 40))
            Text(food.name)
                .alignmentGuide(.listRowSeparatorLeading) {
                    $0[.leading]
                }
        }
    }
}
```

To change the visibility or tint of the row separator use respectively [listRowSeparator(_:edges:)](/documentation/swiftui/view/listrowseparator(_:edges:)) and [listRowSeparatorTint(_:edges:)](/documentation/swiftui/view/listrowseparatortint(_:edges:)).

## Getting guides

- [leading](/documentation/swiftui/horizontalalignment/leading)
- [center](/documentation/swiftui/horizontalalignment/center)
- [trailing](/documentation/swiftui/horizontalalignment/trailing)
- [listRowSeparatorTrailing](/documentation/swiftui/horizontalalignment/listrowseparatortrailing)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
