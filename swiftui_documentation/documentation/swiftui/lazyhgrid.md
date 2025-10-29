---
title: LazyHGrid
description: A container view that arranges its child views in a grid that grows horizontally, creating items only as needed.
source: https://developer.apple.com/documentation/swiftui/lazyhgrid
timestamp: 2025-10-29T00:09:51.158Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# LazyHGrid

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A container view that arranges its child views in a grid that grows horizontally, creating items only as needed.

```swift
struct LazyHGrid<Content> where Content : View
```

## Overview

Use a lazy horizontal grid when you want to display a large, horizontally scrollable collection of views arranged in a two dimensional layout. The first view that you provide to the grid’s `content` closure appears in the top row of the column that’s on the grid’s leading edge. Additional views occupy successive cells in the grid, filling the first column from top to bottom, then the second column, and so on. The number of columns can grow unbounded, but you specify the number of rows by providing a corresponding number of [Grid Item](/documentation/swiftui/griditem) instances to the grid’s initializer.

The grid in the following example defines two rows and uses a [For Each](/documentation/swiftui/foreach) structure to repeatedly generate a pair of [Text](/documentation/swiftui/text) views for the rows in each column:

```swift
struct HorizontalSmileys: View {
    let rows = [GridItem(.fixed(30)), GridItem(.fixed(30))]

    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows) {
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

For each column in the grid, the top row shows a Unicode code point from the “Smileys” group, and the bottom shows its corresponding emoji:



You can achieve a similar layout using a [Grid](/documentation/swiftui/grid) container. Unlike a lazy grid, which creates child views only when SwiftUI needs to display them, a regular grid creates all of its child views right away. This enables the grid to provide better support for cell spacing and alignment. Only use a lazy grid if profiling your app shows that a [Grid](/documentation/swiftui/grid) view performs poorly because it tries to load too many views at once.

## Conforms To

- [View](/documentation/swiftui/view)

## Creating a horizontal grid

- [init(rows:alignment:spacing:pinnedViews:content:)](/documentation/swiftui/lazyhgrid/init(rows:alignment:spacing:pinnedviews:content:)) Creates a grid that grows horizontally.

## Dynamically arranging views in two dimensions

- [LazyVGrid](/documentation/swiftui/lazyvgrid)
- [GridItem](/documentation/swiftui/griditem)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
