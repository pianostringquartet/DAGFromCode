---
title: monospacedDigit()
description: Modifies the text view’s font to use fixed-width digits, while leaving other characters proportionally spaced.
source: https://developer.apple.com/documentation/swiftui/text/monospaceddigit()
timestamp: 2025-10-29T00:12:34.218Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text)

**Instance Method**

# monospacedDigit()

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Modifies the text view’s font to use fixed-width digits, while leaving other characters proportionally spaced.

```swift
nonisolated func monospacedDigit() -> Text
```

## Return Value

A text view with a modified font that uses fixed-width numeric characters, while leaving other characters proportionally spaced.

## Discussion

This modifier only affects numeric characters, and leaves all other characters unchanged.

The following example shows the effect of `monospacedDigit()` on a text view. It arranges two text views in a [VStack](/documentation/swiftui/vstack), each displaying a formatted date that contains many instances of the character 1. The second text view uses the `monospacedDigit()`. Because 1 is usually a narrow character in proportional fonts, applying the modifier widens all of the 1s, and the text view as a whole. The non-digit characters in the text view remain unaffected.

```swift
let myDate = DateComponents(
    calendar: Calendar(identifier: .gregorian),
    timeZone: TimeZone(identifier: "EST"),
    year: 2011,
    month: 1,
    day: 11,
    hour: 11,
    minute: 11
).date!

var body: some View {
    VStack(alignment: .leading) {
        Text(myDate.formatted(date: .long, time: .complete))
            .font(.system(size: 20))
        Text(myDate.formatted(date: .long, time: .complete))
            .font(.system(size: 20))
            .monospacedDigit()
    }
    .padding()
    .navigationTitle("monospacedDigit() Modifier")
}
```



If the base font of the text view doesn’t support fixed-width digits, the font remains unchanged.

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
- [kerning(_:)](/documentation/swiftui/text/kerning(_:))
- [tracking(_:)](/documentation/swiftui/text/tracking(_:))
- [baselineOffset(_:)](/documentation/swiftui/text/baselineoffset(_:))
- [Text.Case](/documentation/swiftui/text/case)
- [Text.DateStyle](/documentation/swiftui/text/datestyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
