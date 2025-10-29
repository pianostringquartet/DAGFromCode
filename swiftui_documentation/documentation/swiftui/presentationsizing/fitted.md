---
title: fitted
description: The presentation sizing is dictated by the ideal size of the content
source: https://developer.apple.com/documentation/swiftui/presentationsizing/fitted
timestamp: 2025-10-29T00:10:39.890Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [presentationsizing](/documentation/swiftui/presentationsizing)

**Type Property**

# fitted

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> The presentation sizing is dictated by the ideal size of the content

```swift
static var fitted: FittedPresentationSizing { get }
```

## Discussion

On macOS, presentations with `.fitted` sizing are user-resizable by default. Because of this, is best practice to define a presentation frame with any of the `frame` modifiers, either specifying a fixed frame or minimum/maximum bounds. If you specify a [fixedSize()](/documentation/swiftui/view/fixedsize()) or a frame with fixed dimensions on the content, the sheet will not be user resizable.

```swift
@State private var present = true

ContentView().sheet(isPresented: $present) {
  ScrollView {
    LazyVGrid(columns: columns) {
      ForEach(0x1f600...0x1f679, id: \.self) { value in
        Text(String(format: "%x", value))
        Text(emoji(value))
          .font(.largeTitle)
        }
      }
  }
  .presentationSizing(.fitted)
  .frame(
    minWidth: 200, idealWidth: 300, maxWidth: 500,
    minHeight: 100, maxHeight: 600)
}
```

To create a view that fits the view’s size in either the horizontal or vertical dimensions, see [fitted(horizontal:vertical:)](/documentation/swiftui/presentationsizing/fitted(horizontal:vertical:)).

## Getting built-in presentation size

- [automatic](/documentation/swiftui/presentationsizing/automatic)
- [form](/documentation/swiftui/presentationsizing/form)
- [page](/documentation/swiftui/presentationsizing/page)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
