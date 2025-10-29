---
title: monospaced()
description: Returns a fixed-width font from the same family as the base font.
source: https://developer.apple.com/documentation/swiftui/font/monospaced()
timestamp: 2025-10-29T00:10:43.388Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [font](/documentation/swiftui/font)

**Instance Method**

# monospaced()

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Returns a fixed-width font from the same family as the base font.

```swift
func monospaced() -> Font
```

## Return Value

A fixed-width font from the same family as the base font, if one is available, and a default fixed-width font otherwise.

## Discussion

If there’s no suitable font face in the same family, SwiftUI returns a default fixed-width font.

The following example adds the `monospaced()` modifier to the default system font, then applies this font to a [Text](/documentation/swiftui/text) view:

```swift
struct ContentView: View {
    let myFont = Font
        .system(size: 24)
        .monospaced()

    var body: some View {
        Text("Hello, world!")
            .font(myFont)
            .padding()
            .navigationTitle("Monospaced")
    }
}
```



SwiftUI may provide different fixed-width replacements for standard user interface fonts (such as [title](/documentation/swiftui/font/title), or a system font created with [system(_:design:)](/documentation/swiftui/font/system(_:design:))) than for those same fonts when created by name with [custom(_:size:)](/documentation/swiftui/font/custom(_:size:)).

The [font(_:)](/documentation/swiftui/view/font(_:)) modifier applies the font to all text within the view. To mix fixed-width text with other styles in the same `Text` view, use the [init(_:)](/documentation/swiftui/text/init(_:)-1a4oh) initializer to use an appropropriately-styled [Attributed String](/documentation/Foundation/AttributedString) for the text view’s content. You can use the [init(markdown:options:baseURL:)](/documentation/Foundation/AttributedString/init(markdown:options:baseURL:)-52n3u) initializer to provide a Markdown-formatted string containing the backtick-syntax (`…`) to apply code voice to specific ranges of the attributed string.

## Styling a font

- [bold()](/documentation/swiftui/font/bold())
- [italic()](/documentation/swiftui/font/italic())
- [monospacedDigit()](/documentation/swiftui/font/monospaceddigit())
- [smallCaps()](/documentation/swiftui/font/smallcaps())
- [lowercaseSmallCaps()](/documentation/swiftui/font/lowercasesmallcaps())
- [uppercaseSmallCaps()](/documentation/swiftui/font/uppercasesmallcaps())
- [weight(_:)](/documentation/swiftui/font/weight(_:))
- [width(_:)](/documentation/swiftui/font/width(_:))
- [Font.Width](/documentation/swiftui/font/width)
- [leading(_:)](/documentation/swiftui/font/leading(_:))
- [Font.Leading](/documentation/swiftui/font/leading)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
