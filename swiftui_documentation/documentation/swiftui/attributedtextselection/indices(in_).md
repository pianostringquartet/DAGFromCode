---
title: indices(in:)
description: The current text selection indices.
source: https://developer.apple.com/documentation/swiftui/attributedtextselection/indices(in:)
timestamp: 2025-10-29T00:10:44.403Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [attributedtextselection](/documentation/swiftui/attributedtextselection)

**Instance Method**

# indices(in:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> The current text selection indices.

```swift
func indices(in text: AttributedString) -> AttributedTextSelection.Indices
```

## Return Value

The current selection if valid for the given `text` or a valid fallback index otherwise.

## Discussion

Always make sure to keep selection and text synchronized. Use `Foundation/AttributedString/transform(updating:body:)`, `Foundation/AttributedString/transformAttributes(in:body:)` or `Foundation/AttributedString/replaceSelection(_:with:)` to do so automatically.

Reset your selection manually to a newly initialized one after making programmatic changes to the text where the selection should not just move with the characters.

```swift
struct ContentView: View {
    @State private var text = AttributedString()
    @State private var selection = AttributedTextSelection()

    var body: some View {
        TextEditor(text: $text, selection: $selection)

        Button("Insert Date") {
            text.replaceSelection(
                &selection,
                withCharacters: Date.now.formatted())
        }

        Button("Reset") {
            text = "Hello, World!"
            selection = .init(range: text.startIndex..<text.endIndex)
        }
    }
}
```

For more details on attributed string index validity, see [isValid(within:)](/documentation/Foundation/AttributedString/Index/isValid(within:)-8fw50).

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
