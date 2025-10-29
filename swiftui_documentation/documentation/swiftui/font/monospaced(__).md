---
title: monospaced(_:)
description: Returns a font adding or removing fixed-width design from the same family as the base font.
source: https://developer.apple.com/documentation/swiftui/font/monospaced(_:)
timestamp: 2025-10-29T00:14:29.584Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [font](/documentation/swiftui/font)

**Instance Method**

# monospaced(_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Returns a font adding or removing fixed-width design from the same family as the base font.

```swift
func monospaced(_ isActive: Bool) -> Font
```

## Return Value

A font with the fixed-width design added or removed, from the same family as the base font, if one is available, and a default font otherwise.

## Discussion

If there’s no suitable font face in the same family, SwiftUI returns a default font.

The following example adds the `monospaced()` modifier to the default system font, then applies this font to a [Text](/documentation/swiftui/text) view:

```swift
struct ContentView: View {
    let myFont = Font
        .system(size: 24)
        .monospaced(true)

    var body: some View {
        Text("Hello, world!")
            .font(myFont)
            .padding()
            .navigationTitle("Monospaced")
    }
}
```



SwiftUI may provide different fixed-width replacements for standard user interface fonts (such as [title](/documentation/swiftui/font/title), or a system font created with [system(_:design:)](/documentation/swiftui/font/system(_:design:))) than for those same fonts when created by name with [custom(_:size:)](/documentation/swiftui/font/custom(_:size:)).

The [font(_:)](/documentation/swiftui/view/font(_:)) modifier applies the font to all text within the view. To mix fixed-width text with other styles in the same `Text` view, use the [init(_:)](/documentation/swiftui/text/init(_:)-1a4oh) initializer to use an appropriately-styled [Attributed String](/documentation/Foundation/AttributedString) for the text view’s content. You can use the [init(markdown:options:baseURL:)](/documentation/Foundation/AttributedString/init(markdown:options:baseURL:)-52n3u) initializer to provide a Markdown-formatted string containing the backtick-syntax (`…`) to apply code voice to specific ranges of the attributed string.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
