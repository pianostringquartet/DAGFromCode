---
title: LazyVGrid
description: A container view that arranges its child views in a grid that grows vertically, creating items only as needed.
source: https://developer.apple.com/documentation/swiftui/lazyvgrid
timestamp: 2025-10-29T00:11:35.407Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# LazyVGrid

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A container view that arranges its child views in a grid that grows vertically, creating items only as needed.

```swift
struct LazyVGrid<Content> where Content : View
```

## Overview

Use a lazy vertical grid when you want to display a large, vertically scrollable collection of views arranged in a two dimensional layout. The first view that you provide to the grid’s `content` closure appears in the top row of the column that’s on the grid’s leading edge. Additional views occupy successive cells in the grid, filling the first row from leading to trailing edges, then the second row, and so on. The number of rows can grow unbounded, but you specify the number of columns by providing a corresponding number of [Grid Item](/documentation/swiftui/griditem) instances to the grid’s initializer.

The grid in the following example defines two columns and uses a [For Each](/documentation/swiftui/foreach) structure to repeatedly generate a pair of [Text](/documentation/swiftui/text) views for the columns in each row:

```swift
struct VerticalSmileys: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible())]

    var body: some View {
         ScrollView {
             LazyVGrid(columns: columns) {
                 ForEach(0x1f600...0x1f679, id: \.self) { value in
                     Text(String(format: "%x", value))
                     Text(emoji(value))
                         .font(.largeTitle)
                 }
             }
         }
    }

    private func emoji(_ value: Int) -> String {
        guard let scalar = UnicodeScalar(value) else { return "?" }
        return String(Character(scalar))
    }
}
```

For each row in the grid, the first column shows a Unicode code point from the “Smileys” group, and the second shows its corresponding emoji:



You can achieve a similar layout using a [Grid](/documentation/swiftui/grid) container. Unlike a lazy grid, which creates child views only when SwiftUI needs to display them, a regular grid creates all of its child views right away. This enables the grid to provide better support for cell spacing and alignment. Only use a lazy grid if profiling your app shows that a [Grid](/documentation/swiftui/grid) view performs poorly because it tries to load too many views at once.

## Conforms To

- [View](/documentation/swiftui/view)

## Creating a vertical grid

- [init(columns:alignment:spacing:pinnedViews:content:)](/documentation/swiftui/lazyvgrid/init(columns:alignment:spacing:pinnedviews:content:)) Creates a grid that grows vertically.

## Dynamically arranging views in two dimensions

- [LazyHGrid](/documentation/swiftui/lazyhgrid)
- [GridItem](/documentation/swiftui/griditem)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
