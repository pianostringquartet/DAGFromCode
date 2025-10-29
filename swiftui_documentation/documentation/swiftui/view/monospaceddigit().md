---
title: monospacedDigit()
description: Modifies the fonts of all child views to use fixed-width digits, if possible, while leaving other characters proportionally spaced.
source: https://developer.apple.com/documentation/swiftui/view/monospaceddigit()
timestamp: 2025-10-29T00:14:35.375Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# monospacedDigit()

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Modifies the fonts of all child views to use fixed-width digits, if possible, while leaving other characters proportionally spaced.

```swift
nonisolated func monospacedDigit() -> some View
```

## Return Value

A view whose child views’ fonts use fixed-width numeric characters, while leaving other characters proportionally spaced.

## Discussion

Using fixed-width digits allows you to easily align numbers of the same size in a table-like arrangement. This feature is also known as “tabular figures” or “tabular numbers.”

This modifier only affects numeric characters, and leaves all other characters unchanged.

The following example shows the effect of `monospacedDigit()` on multiple child views. The example consists of two [VStack](/documentation/swiftui/vstack) views inside an [HStack](/documentation/swiftui/hstack). Each `VStack` contains two [Button](/documentation/swiftui/button) views, with the second `VStack` applying the `monospacedDigit()` modifier to its contents. As a result, the digits in the buttons in the trailing `VStack` are the same width, which in turn gives the buttons equal widths.

```swift
var body: some View {
    HStack(alignment: .top) {
        VStack(alignment: .leading) {
            Button("Delete 111 messages") {}
            Button("Delete 222 messages") {}
        }
        VStack(alignment: .leading) {
            Button("Delete 111 messages") {}
            Button("Delete 222 messages") {}
        }
        .monospacedDigit()
    }
    .padding()
    .navigationTitle("monospacedDigit() Child Views")
}
```



If a child view’s base font doesn’t support fixed-width digits, the font remains unchanged.

## Controlling text style

- [bold(_:)](/documentation/swiftui/view/bold(_:))
- [italic(_:)](/documentation/swiftui/view/italic(_:))
- [underline(_:pattern:color:)](/documentation/swiftui/view/underline(_:pattern:color:))
- [strikethrough(_:pattern:color:)](/documentation/swiftui/view/strikethrough(_:pattern:color:))
- [textCase(_:)](/documentation/swiftui/view/textcase(_:))
- [textCase](/documentation/swiftui/environmentvalues/textcase)
- [monospaced(_:)](/documentation/swiftui/view/monospaced(_:))
- [AttributedTextFormattingDefinition](/documentation/swiftui/attributedtextformattingdefinition)
- [AttributedTextValueConstraint](/documentation/swiftui/attributedtextvalueconstraint)
- [AttributedTextFormatting](/documentation/swiftui/attributedtextformatting)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
