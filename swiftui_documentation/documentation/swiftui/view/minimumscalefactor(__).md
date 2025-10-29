---
title: minimumScaleFactor(_:)
description: Sets the minimum amount that text in this view scales down to fit in the available space.
source: https://developer.apple.com/documentation/swiftui/view/minimumscalefactor(_:)
timestamp: 2025-10-29T00:10:55.380Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# minimumScaleFactor(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Sets the minimum amount that text in this view scales down to fit in the available space.

```swift
nonisolated func minimumScaleFactor(_ factor: CGFloat) -> some View
```

## Parameters

**factor**

A fraction between 0 and 1 (inclusive) you use to specify the minimum amount of text scaling that this view permits.



## Return Value

A view that limits the amount of text downscaling.

## Discussion

Use the `minimumScaleFactor(_:)` modifier if the text you place in a view doesn’t fit and it’s okay if the text shrinks to accommodate. For example, a label with a minimum scale factor of `0.5` draws its text in a font size as small as half of the actual font if needed.

In the example below, the [HStack](/documentation/swiftui/hstack) contains a [Text](/documentation/swiftui/text) label with a line limit of `1`, that is next to a [Text Field](/documentation/swiftui/textfield). To allow the label to fit into the available space, the `minimumScaleFactor(_:)` modifier shrinks the text as needed to fit into the available space.

```swift
HStack {
    Text("This is a long label that will be scaled to fit:")
        .lineLimit(1)
        .minimumScaleFactor(0.5)
    TextField("My Long Text Field", text: $myTextField)
}
```



## Managing text layout

- [truncationMode(_:)](/documentation/swiftui/view/truncationmode(_:))
- [truncationMode](/documentation/swiftui/environmentvalues/truncationmode)
- [allowsTightening(_:)](/documentation/swiftui/view/allowstightening(_:))
- [allowsTightening](/documentation/swiftui/environmentvalues/allowstightening)
- [minimumScaleFactor](/documentation/swiftui/environmentvalues/minimumscalefactor)
- [baselineOffset(_:)](/documentation/swiftui/view/baselineoffset(_:))
- [kerning(_:)](/documentation/swiftui/view/kerning(_:))
- [tracking(_:)](/documentation/swiftui/view/tracking(_:))
- [flipsForRightToLeftLayoutDirection(_:)](/documentation/swiftui/view/flipsforrighttoleftlayoutdirection(_:))
- [TextAlignment](/documentation/swiftui/textalignment)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
