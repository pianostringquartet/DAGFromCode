---
title: font(_:)
description: Sets the default font for text in the view.
source: https://developer.apple.com/documentation/swiftui/text/font(_:)
timestamp: 2025-10-29T00:10:57.594Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text)

**Instance Method**

# font(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Sets the default font for text in the view.

```swift
nonisolated func font(_ font: Font?) -> Text
```

## Parameters

**font**

The font to use when displaying this text.



## Return Value

Text that uses the font you specify.

## Discussion

Use `font(_:)` to apply a specific font to an individual Text View, or all of the text views in a container.

In the example below, the first text field has a font set directly, while the font applied to the following container applies to all of the text views inside that container:

```swift
VStack {
    Text("Font applied to a text view.")
        .font(.largeTitle)

    VStack {
        Text("These two text views have the same font")
        Text("applied to their parent view.")
    }
    .font(.system(size: 16, weight: .light, design: .default))
}
```



## Choosing a font

- [fontWeight(_:)](/documentation/swiftui/text/fontweight(_:))
- [fontDesign(_:)](/documentation/swiftui/text/fontdesign(_:))
- [fontWidth(_:)](/documentation/swiftui/text/fontwidth(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
