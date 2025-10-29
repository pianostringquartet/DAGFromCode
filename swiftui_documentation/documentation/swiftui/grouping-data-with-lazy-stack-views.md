---
title: Grouping data with lazy stack views
description: Split content into logical sections inside lazy stack views.
source: https://developer.apple.com/documentation/swiftui/grouping-data-with-lazy-stack-views
timestamp: 2025-10-29T00:14:11.440Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Article**

# Grouping data with lazy stack views

> Split content into logical sections inside lazy stack views.

## Overview

[Lazy HStack](/documentation/swiftui/lazyhstack) and [Lazy VStack](/documentation/swiftui/lazyvstack) views are both able to display groups of views organized into logical sections, arranging their children in lines that grow horizontally and vertically, respectively. These stacks are “lazy” in that the stack views don’t create items until they need to be rendered onscreen. Like stack views, lazy stacks don’t include any inherent support for scrolling, and you should wrap lazy stack views in [Scroll View](/documentation/swiftui/scrollview) containers.

To group content or data inside a lazy stack view, use [Section](/documentation/swiftui/section) instances as containers for collections of grouped views. [Section](/documentation/swiftui/section) views don’t have any visual representation themselves but can contain header and footer views that can either scroll with the stack’s content or that you can pin to the top or bottom of the [Scroll View](/documentation/swiftui/scrollview).

> [!NOTE]
> Use [Section](/documentation/swiftui/section) views to get platform-appropriate grouping inside stack views or lazy stacks, lazy grids, [List](/documentation/swiftui/list), [Command Menu](/documentation/swiftui/commandmenu), [Form](/documentation/swiftui/form), and several other container types.

The code samples in this article build a user interface for visualizing shades of primary colors. Each section in the stack represents a primary color, containing five subviews, each showing a different variation of the color.



### Prepare your data

As with views contained within a stack, each [Section](/documentation/swiftui/section) must be uniquely identifiable when iterated by [For Each](/documentation/swiftui/foreach). In this example, `ColorData` instances represent the sections, and `ShadeData` instances represent the shades of each color inside a section. Both `ColorData` and `ShadeData` conform to the [Identifiable](/documentation/Swift/Identifiable) protocol.

```swift
struct ColorData: Identifiable {
    let id = UUID()
    let name: String
    let color: Color
    let variations: [ShadeData]

    struct ShadeData: Identifiable {
        let id = UUID()
        var brightness: Double
    }

    init(color: Color, name: String) {
        self.name = name
        self.color = color
        self.variations = stride(from: 0.0, to: 0.5, by: 0.1)
            .map { ShadeData(brightness: $0) }
    }
}
```

### Display sections with headers and footers

The `ColorSelectionView` below sets up an array containing `ColorData` instances for each primary color. The [Lazy VStack](/documentation/swiftui/lazyvstack) iterates over the array of color data to create sections, then iterates over the `variations` to create views from the shades.

```swift
struct ColorSelectionView: View {
    let sections = [
        ColorData(color: .red, name: "Reds"),
        ColorData(color: .green, name: "Greens"),
        ColorData(color: .blue, name: "Blues")
    ]

    var body: some View {
        ScrollView {
            LazyVStack(spacing: 1) {
                ForEach(sections) { section in
                    Section(header: SectionHeaderView(colorData: section)) {
                        ForEach(section.variations) { variation in
                            section.color
                                .brightness(variation.brightness)
                                .frame(height: 20)
                        }
                    }
                }
            }
        }
    }
}
```

Group data with [Section](/documentation/swiftui/section) views and pass in a header or footer view with the `header` and `footer` properties. This example implements a `SectionHeaderView` as a header view, containing a semi-transparent stack view and the name of the section’s color in a [Text](/documentation/swiftui/text) label.

```swift
struct SectionHeaderView: View {
    var colorData: ColorData

    var body: some View {
        HStack {
            Text(colorData.name)
                .font(.headline)
                .foregroundColor(colorData.color)
            Spacer()
        }
        .padding()
        .background(Color.primary
                        .colorInvert()
                        .opacity(0.75))
    }
}
```

For more information on using [For Each](/documentation/swiftui/foreach) to repeat views inside a stack, see [Creating-Performant-Scrollable](/documentation/swiftui/creating-performant-scrollable-stacks).

### Keep important information visible

By default, section header and footer views will scroll in sync with section content. If you want header and footer views to always remain visible, regardless of whether the top or bottom of the section is visible, then specify a set of [Pinned Scrollable Views](/documentation/swiftui/pinnedscrollableviews) for the `pinnedViews` property of the lazy stack view.

```swift
LazyVStack(spacing: 1, pinnedViews: [.sectionHeaders]) {
    // ...
}
```

In [Lazy VStack](/documentation/swiftui/lazyvstack) containers, headers attach to the top and footers to the bottom. In [Lazy HStack](/documentation/swiftui/lazyhstack) containers, headers attach to the leading edge and footers to the trailing edge.

With this change, section headers are pinned to the top of the view as the user begins to scroll.



## Dynamically arranging views in one dimension

- [Creating performant scrollable stacks](/documentation/swiftui/creating-performant-scrollable-stacks)
- [LazyHStack](/documentation/swiftui/lazyhstack)
- [LazyVStack](/documentation/swiftui/lazyvstack)
- [PinnedScrollableViews](/documentation/swiftui/pinnedscrollableviews)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
