---
title: lineSpacing(_:)
description: Sets the amount of space between lines of text in this view.
source: https://developer.apple.com/documentation/swiftui/view/linespacing(_:)
timestamp: 2025-10-29T00:09:56.595Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# lineSpacing(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Sets the amount of space between lines of text in this view.

```swift
nonisolated func lineSpacing(_ lineSpacing: CGFloat) -> some View
```

## Parameters

**lineSpacing**

The amount of space between the bottom of one line and the top of the next line in points.



## Discussion

Use `lineSpacing(_:)` to set the amount of spacing from the bottom of one line to the top of the next for text elements in the view.

In the [Text](/documentation/swiftui/text) view in the example below, 10 points separate the bottom of one line to the top of the next as the text field wraps inside this view. Applying `lineSpacing(_:)` to a view hierarchy applies the line spacing to all text elements contained in the view.

```swift
Text("This is a string in a TextField with 10 point spacing applied between the bottom of one line and the top of the next.")
    .frame(width: 200, height: 200, alignment: .leading)
    .lineSpacing(10)
```



## Formatting multiline text

- [lineSpacing](/documentation/swiftui/environmentvalues/linespacing)
- [multilineTextAlignment(_:)](/documentation/swiftui/view/multilinetextalignment(_:))
- [multilineTextAlignment](/documentation/swiftui/environmentvalues/multilinetextalignment)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
