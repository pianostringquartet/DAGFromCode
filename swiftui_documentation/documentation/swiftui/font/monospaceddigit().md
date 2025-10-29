---
title: monospacedDigit()
description: Returns a modified font that uses fixed-width digits, while leaving other characters proportionally spaced.
source: https://developer.apple.com/documentation/swiftui/font/monospaceddigit()
timestamp: 2025-10-29T00:10:23.593Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [font](/documentation/swiftui/font)

**Instance Method**

# monospacedDigit()

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Returns a modified font that uses fixed-width digits, while leaving other characters proportionally spaced.

```swift
func monospacedDigit() -> Font
```

## Return Value

A font that uses fixed-width numeric characters.

## Discussion

This modifier only affects numeric characters, and leaves all other characters unchanged. If the base font doesn’t support fixed-width, or *monospace* digits, the font remains unchanged.

The following example shows two text fields arranged in a [VStack](/documentation/swiftui/vstack). Both text fields specify the 12-point system font, with the second adding the `monospacedDigit()` modifier to the font. Because the text includes the digit 1, normally a narrow character in proportional fonts, the second text field becomes wider than the first.

```swift
@State private var userText = "Effect of monospacing digits: 111,111."

var body: some View {
    VStack {
        TextField("Proportional", text: $userText)
            .font(.system(size: 12))
        TextField("Monospaced", text: $userText)
            .font(.system(size: 12).monospacedDigit())
    }
    .padding()
    .navigationTitle(Text("Font + monospacedDigit()"))
}
```



## Styling a font

- [bold()](/documentation/swiftui/font/bold())
- [italic()](/documentation/swiftui/font/italic())
- [monospaced()](/documentation/swiftui/font/monospaced())
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
