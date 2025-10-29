---
title: lineLimit(_:)
description: Sets to a closed range the number of lines that text can occupy in this view.
source: https://developer.apple.com/documentation/swiftui/view/linelimit(_:)
timestamp: 2025-10-29T00:14:44.741Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# lineLimit(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Sets to a closed range the number of lines that text can occupy in this view.

```swift
nonisolated func lineLimit(_ limit: ClosedRange<Int>) -> some View
```

## Parameters

**limit**

The line limit.



## Discussion

Use this modifier to specify a closed range of lines that a [Text](/documentation/swiftui/text) view or a vertical [Text Field](/documentation/swiftui/textfield) can occupy. When the text of such views occupies more space than the provided limit, a [Text](/documentation/swiftui/text) view truncates its content while a [Text Field](/documentation/swiftui/textfield) becomes scrollable.

```swift
Form {
    TextField("Title", text: $model.title)
    TextField("Notes", text: $model.notes, axis: .vertical)
        .lineLimit(1...3)
}
```

## Limiting line count for multiline text

- [lineLimit(_:reservesSpace:)](/documentation/swiftui/view/linelimit(_:reservesspace:))
- [lineLimit](/documentation/swiftui/environmentvalues/linelimit)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
