---
title: kerning(_:)
description: Sets the spacing, or kerning, between characters.
source: https://developer.apple.com/documentation/swiftui/text/kerning(_:)
timestamp: 2025-10-29T00:10:09.359Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text)

**Instance Method**

# kerning(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Sets the spacing, or kerning, between characters.

```swift
nonisolated func kerning(_ kerning: CGFloat) -> Text
```

## Parameters

**kerning**

The spacing to use between individual characters in this text. Value of `0` sets the kerning to the system default value.



## Return Value

Text with the specified amount of kerning.

## Discussion

Kerning defines the offset, in points, that a text view should shift characters from the default spacing. Use positive kerning to widen the spacing between characters. Use negative kerning to tighten the spacing between characters.

```swift
VStack(alignment: .leading) {
    Text("ABCDEF").kerning(-3)
    Text("ABCDEF")
    Text("ABCDEF").kerning(3)
}
```

The last character in the first case, which uses negative kerning, experiences cropping because the kerning affects the trailing edge of the text view as well.



Kerning attempts to maintain ligatures. For example, the Hoefler Text font uses a ligature for the letter combination *ffl*, as in the word *raffle*, shown here with a small negative and a small positive kerning:



The *ffl* letter combination keeps a constant shape as the other letters move together or apart. Beyond a certain point in either direction, however, kerning does disable nonessential ligatures.



> [!IMPORTANT]
> If you add both the [tracking(_:)](/documentation/swiftui/text/tracking(_:)) and [kerning(_:)](/documentation/swiftui/text/kerning(_:)) modifiers to a view, the view applies the tracking and ignores the kerning.

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
- [tracking(_:)](/documentation/swiftui/text/tracking(_:))
- [baselineOffset(_:)](/documentation/swiftui/text/baselineoffset(_:))
- [Text.Case](/documentation/swiftui/text/case)
- [Text.DateStyle](/documentation/swiftui/text/datestyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
