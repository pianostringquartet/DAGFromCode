---
title: multilineTextAlignment
description: An environment value that indicates how a text view aligns its lines when the content wraps or contains newlines.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/multilinetextalignment
timestamp: 2025-10-29T00:12:09.402Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# multilineTextAlignment

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> An environment value that indicates how a text view aligns its lines when the content wraps or contains newlines.

```swift
var multilineTextAlignment: TextAlignment { get set }
```

## Discussion

Set this value for a view hierarchy by applying the [multilineTextAlignment(_:)](/documentation/swiftui/view/multilinetextalignment(_:)) view modifier. Views in the hierarchy that display text, like [Text](/documentation/swiftui/text) or [Text Editor](/documentation/swiftui/texteditor), read the value from the environment and adjust their text alignment accordingly.

This value has no effect on a [Text](/documentation/swiftui/text) view that contains only one line of text, because a text view has a width that exactly matches the width of its widest line. If you want to align an entire text view rather than its contents, set the aligment of its container, like a [VStack](/documentation/swiftui/vstack) or a frame that you create with the [frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)](/documentation/swiftui/view/frame(minwidth:idealwidth:maxwidth:minheight:idealheight:maxheight:alignment:)) modifier.

> [!NOTE]
> You can use this value to control the alignment of a [Text](/documentation/swiftui/text) view that you create with the [init(_:style:)](/documentation/swiftui/text/init(_:style:)) initializer to display localized dates and times, including when the view uses only a single line, but only when that view appears in a widget.

## Formatting multiline text

- [lineSpacing(_:)](/documentation/swiftui/view/linespacing(_:))
- [lineSpacing](/documentation/swiftui/environmentvalues/linespacing)
- [multilineTextAlignment(_:)](/documentation/swiftui/view/multilinetextalignment(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
