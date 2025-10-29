---
title: truncationMode(_:)
description: Sets the truncation mode for lines of text that are too long to fit in the available space.
source: https://developer.apple.com/documentation/swiftui/view/truncationmode(_:)
timestamp: 2025-10-29T00:11:06.531Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# truncationMode(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Sets the truncation mode for lines of text that are too long to fit in the available space.

```swift
nonisolated func truncationMode(_ mode: Text.TruncationMode) -> some View
```

## Parameters

**mode**

The truncation mode that specifies where to truncate the text within the text view, if needed. You can truncate at the beginning, middle, or end of the text view.



## Return Value

A view that truncates text at different points in a line depending on the mode you select.

## Discussion

Use the `truncationMode(_:)` modifier to determine whether text in a long line is truncated at the beginning, middle, or end. Truncation is indicated by adding an ellipsis (…) to the line when removing text to indicate to readers that text is missing.

In the example below, the bounds of text view constrains the amount of text that the view displays and the `truncationMode(_:)` specifies from which direction and where to display the truncation indicator:

```swift
Text("This is a block of text that will show up in a text element as multiple lines. The text will fill the available space, and then, eventually, be truncated.")
    .frame(width: 150, height: 150)
    .truncationMode(.tail)
```



## Managing text layout

- [truncationMode](/documentation/swiftui/environmentvalues/truncationmode)
- [allowsTightening(_:)](/documentation/swiftui/view/allowstightening(_:))
- [allowsTightening](/documentation/swiftui/environmentvalues/allowstightening)
- [minimumScaleFactor(_:)](/documentation/swiftui/view/minimumscalefactor(_:))
- [minimumScaleFactor](/documentation/swiftui/environmentvalues/minimumscalefactor)
- [baselineOffset(_:)](/documentation/swiftui/view/baselineoffset(_:))
- [kerning(_:)](/documentation/swiftui/view/kerning(_:))
- [tracking(_:)](/documentation/swiftui/view/tracking(_:))
- [flipsForRightToLeftLayoutDirection(_:)](/documentation/swiftui/view/flipsforrighttoleftlayoutdirection(_:))
- [TextAlignment](/documentation/swiftui/textalignment)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
