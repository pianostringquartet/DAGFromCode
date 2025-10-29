---
title: baselineOffset(_:)
description: Sets the vertical offset for the text relative to its baseline.
source: https://developer.apple.com/documentation/swiftui/text/baselineoffset(_:)
timestamp: 2025-10-29T00:14:04.150Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text)

**Instance Method**

# baselineOffset(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Sets the vertical offset for the text relative to its baseline.

```swift
nonisolated func baselineOffset(_ baselineOffset: CGFloat) -> Text
```

## Parameters

**baselineOffset**

The amount to shift the text vertically (up or down) relative to its baseline.



## Return Value

Text that’s above or below its baseline.

## Discussion

Change the baseline offset to move the text in the view (in points) up or down relative to its baseline. The bounds of the view expand to contain the moved text.

```swift
HStack(alignment: .top) {
    Text("Hello")
        .baselineOffset(-10)
        .border(Color.red)
    Text("Hello")
        .border(Color.green)
    Text("Hello")
        .baselineOffset(10)
        .border(Color.blue)
}
.background(Color(white: 0.9))
```

By drawing a border around each text view, you can see how the text moves, and how that affects the view.



The first view, with a negative offset, grows downward to handle the lowered text. The last view, with a positive offset, grows upward. The enclosing [HStack](/documentation/swiftui/hstack) instance, shown in gray, ensures all the text views remain aligned at their top edge, regardless of the offset.

## Styling the view’s text

- [foregroundStyle(_:)](/documentation/swiftui/text/foregroundstyle(_:))
- [bold()](/documentation/swiftui/text/bold())
- [bold(_:)](/documentation/swiftui/text/bold(_:))
- [italic()](/documentation/swiftui/text/italic())
- [italic(_:)](/documentation/swiftui/text/italic(_:))
- [strikethrough(_:color:)](/documentation/swiftui/text/strikethrough(_:color:))
- [strikethrough(_:pattern:color:)](/documentation/swiftui/text/strikethrough(_:pattern:color:))
- [underline(_:color:)](/documentation/swiftui/text/underline(_:color:))
- [underline(_:pattern:color:)](/documentation/swiftui/text/underline(_:pattern:color:))
- [monospaced(_:)](/documentation/swiftui/text/monospaced(_:))
- [monospacedDigit()](/documentation/swiftui/text/monospaceddigit())
- [kerning(_:)](/documentation/swiftui/text/kerning(_:))
- [tracking(_:)](/documentation/swiftui/text/tracking(_:))
- [Text.Case](/documentation/swiftui/text/case)
- [Text.DateStyle](/documentation/swiftui/text/datestyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
