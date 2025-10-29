---
title: multilineTextAlignment(_:)
description: Sets the alignment of a text view that contains multiple lines of text.
source: https://developer.apple.com/documentation/swiftui/view/multilinetextalignment(_:)
timestamp: 2025-10-29T00:14:37.268Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# multilineTextAlignment(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Sets the alignment of a text view that contains multiple lines of text.

```swift
nonisolated func multilineTextAlignment(_ alignment: TextAlignment) -> some View
```

## Parameters

**alignment**

A value that you use to align multiple lines of text within a view.



## Return Value

A view that aligns the lines of multiline [Text](/documentation/swiftui/text) instances it contains.

## Discussion

Use this modifier to set an alignment for a multiline block of text. For example, the modifier centers the contents of the following [Text](/documentation/swiftui/text) view:

```swift
Text("This is a block of text that shows up in a text element as multiple lines.\("\n") Here we have chosen to center this text.")
    .frame(width: 200)
    .multilineTextAlignment(.center)
```

The text in the above example spans more than one line because:

- The newline character introduces a line break.
- The frame modifier limits the space available to the text view, and by default a text view wraps lines that don’t fit in the available width. As a result, the text before the explicit line break wraps to three lines, and the text after uses two lines.

The modifier applies the alignment to the all the lines of text in the view, regardless of why wrapping occurs:



The modifier has no effect on a [Text](/documentation/swiftui/text) view that contains only one line of text, because a text view has a width that exactly matches the width of its widest line. If you want to align an entire text view rather than its contents, set the aligment of its container, like a [VStack](/documentation/swiftui/vstack) or a frame that you create with the [frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)](/documentation/swiftui/view/frame(minwidth:idealwidth:maxwidth:minheight:idealheight:maxheight:alignment:)) modifier.

> [!NOTE]
> You can use this modifier to control the alignment of a [Text](/documentation/swiftui/text) view that you create with the [init(_:style:)](/documentation/swiftui/text/init(_:style:)) initializer to display localized dates and times, including when the view uses only a single line, but only when that view appears in a widget.

The modifier also affects the content alignment of other text container types, like [Text Editor](/documentation/swiftui/texteditor) and [Text Field](/documentation/swiftui/textfield). In those cases, the modifier sets the alignment even when the view contains only a single line because view’s width isn’t dictated by the width of the text it contains.

The modifier operates by setting the [multiline Text Alignment](/documentation/swiftui/environmentvalues/multilinetextalignment) value in the environment, so it affects all the text containers in the modified view hierarchy. For example, you can apply the modifier to a [VStack](/documentation/swiftui/vstack) to configure all the text views inside the stack.

## Formatting multiline text

- [lineSpacing(_:)](/documentation/swiftui/view/linespacing(_:))
- [lineSpacing](/documentation/swiftui/environmentvalues/linespacing)
- [multilineTextAlignment](/documentation/swiftui/environmentvalues/multilinetextalignment)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
