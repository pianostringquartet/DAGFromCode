---
title: lineLimit(_:reservesSpace:)
description: Sets a limit for the number of lines text can occupy in this view.
source: https://developer.apple.com/documentation/swiftui/view/linelimit(_:reservesspace:)
timestamp: 2025-10-29T00:14:26.651Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# lineLimit(_:reservesSpace:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Sets a limit for the number of lines text can occupy in this view.

```swift
nonisolated func lineLimit(_ limit: Int, reservesSpace: Bool) -> some View
```

## Parameters

**limit**

The line limit.



**reservesSpace**

Whether text reserves space so that it always occupies the height required to display the specified number of lines.



## Discussion

Use this modifier to specify a limit to the lines that a [Text](/documentation/swiftui/text) or a vertical [Text Field](/documentation/swiftui/textfield) may occupy. If passed a value of true for the `reservesSpace` parameter, and the text of such views occupies less space than the provided limit, that view expands to occupy the minimum number of lines. When the text occupies more space than the provided limit, a [Text](/documentation/swiftui/text) view truncates its content while a [Text Field](/documentation/swiftui/textfield) becomes scrollable.

```swift
GroupBox {
    Text("Title")
        .font(.headline)
        .lineLimit(2, reservesSpace: true)
    Text("Subtitle")
        .font(.subheadline)
        .lineLimit(4, reservesSpace: true)
}
```

## Limiting line count for multiline text

- [lineLimit(_:)](/documentation/swiftui/view/linelimit(_:))
- [lineLimit](/documentation/swiftui/environmentvalues/linelimit)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
