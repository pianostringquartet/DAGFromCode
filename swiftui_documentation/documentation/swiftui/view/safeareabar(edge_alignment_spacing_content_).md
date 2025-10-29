---
title: safeAreaBar(edge:alignment:spacing:content:)
description: Shows the specified content as a custom bar beside the modified view.
source: https://developer.apple.com/documentation/swiftui/view/safeareabar(edge:alignment:spacing:content:)
timestamp: 2025-10-29T00:10:09.867Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# safeAreaBar(edge:alignment:spacing:content:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Shows the specified content as a custom bar beside the modified view.

```swift
nonisolated func safeAreaBar(edge: HorizontalEdge, alignment: VerticalAlignment = .center, spacing: CGFloat? = nil, @ViewBuilder content: () -> some View) -> some View
```

## Parameters

**edge**

The horizontal edge of the view on which `content` is placed.



**alignment**

The alignment guide used to position `content` vertically.



**spacing**

Extra distance placed between the two views, or nil to use the default amount of spacing.



**content**

A view builder function providing the view to display as a custom bar.



## Return Value

A new view that displays `content` beside the modified view, making space for the `content` view by horizontally insetting the modified view, adjusting the safe area and scroll edge effects to match.

## Discussion

Similar to the [safeAreaInset(edge:alignment:spacing:content:)](/documentation/swiftui/view/safeareainset(edge:alignment:spacing:content:)-6gwby) modifier, the `content` view is anchored to the specified horizontal edge of the parent view and its width insets the safe area.

Additionally, it extends the edge effect of any scroll views affected by the inset safe area.

## Configuring scroll edge effects

- [scrollEdgeEffectStyle(_:for:)](/documentation/swiftui/view/scrolledgeeffectstyle(_:for:))
- [ScrollEdgeEffectStyle](/documentation/swiftui/scrolledgeeffectstyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
