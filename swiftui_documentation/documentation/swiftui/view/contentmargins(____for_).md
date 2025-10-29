---
title: contentMargins(_:_:for:)
description: Configures the content margin for a provided placement.
source: https://developer.apple.com/documentation/swiftui/view/contentmargins(_:_:for:)
timestamp: 2025-10-29T00:11:26.546Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# contentMargins(_:_:for:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Configures the content margin for a provided placement.

```swift
nonisolated func contentMargins(_ edges: Edge.Set = .all, _ insets: EdgeInsets, for placement: ContentMarginPlacement = .automatic) -> some View
```

## Parameters

**edges**

The edges to add the margins to.



**insets**

The amount of margins to add.



**placement**

Where the margins should be added.



## Discussion

Use this modifier to customize the content margins of different kinds of views. For example, you can use this modifier to customize the margins of scrollable views like [Scroll View](/documentation/swiftui/scrollview). In the following example, the scroll view will automatically inset its content by the safe area plus an additional 20 points on the leading and trailing edge.

```swift
ScrollView(.horizontal) {
    // ...
}
.contentMargins(.horizontal, 20.0)
```

You can provide a [Content Margin Placement](/documentation/swiftui/contentmarginplacement) to target specific parts of a view to customize. For example, provide a [scroll Content](/documentation/swiftui/contentmarginplacement/scrollcontent) placement to inset the content of a [Text Editor](/documentation/swiftui/texteditor) without affecting the insets of its scroll indicators.

```swift
TextEditor(text: $text)
    .contentMargins(.horizontal, 20.0, for: .scrollContent)
```

Similarly, you can customize the insets of scroll indicators separately from scroll content. Consider doing this when applying a custom clip shape that may clip the indicators.

```swift
ScrollView {
    // ...
}
.clipShape(.rect(cornerRadius: 20.0))
.contentMargins(10.0, for: .scrollIndicators)
```

When applying multiple contentMargins modifiers, modifiers with the same placement will override modifiers higher up in the view hierarchy.

## Setting margins

- [contentMargins(_:for:)](/documentation/swiftui/view/contentmargins(_:for:))
- [ContentMarginPlacement](/documentation/swiftui/contentmarginplacement)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
