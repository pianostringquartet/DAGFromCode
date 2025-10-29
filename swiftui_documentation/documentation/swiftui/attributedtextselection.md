---
title: AttributedTextSelection
description: Represents a selection of attributed text.
source: https://developer.apple.com/documentation/swiftui/attributedtextselection
timestamp: 2025-10-29T00:09:13.109Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# AttributedTextSelection

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Represents a selection of attributed text.

```swift
struct AttributedTextSelection
```

## Overview

A selection is either an insertion point (e.g. a cursor in the text), or spans over a range of characters. While that range is always visually contiguous, it may not be logically contiguous in the text storage. Specifically, a single selection value cannot represent multiple cursors.

This is frequently used to represent selection of text in a `TextEditor`. The following example shows a text editor that leverages text selection to offer live suggestions based on the current selection.

```swift
struct SuggestionTextEditor: View {
    @State var text: AttributedString = ""
    @State var selection = AttributedTextSelection()

    var body: some View {
        VStack {
            TextEditor(text: $text, selection: $selection)
            // A helper view that offers live suggestions based on selection.
            SuggestionsView(substrings: getSubstrings(
                text: text, indices: selection.indices(in: text))
        }
    }

    private func getSubstrings(
        text: String, indices: AttributedTextSelection.Indices
    ) -> [Substring] {
        // Resolve substrings representing the current selection...
    }
}

struct SuggestionsView: View { ... }
```

You can also use the [textSelectionAffinity(_:)](/documentation/swiftui/view/textselectionaffinity(_:)) modifier to specify a selection affinity on the given hierarchy:

```swift
struct SuggestionTextEditor: View {
    @State var text: AttributedString = ""
    @State var selection = AttributedTextSelection()

    var body: some View {
        VStack {
            TextEditor(text: $text, selection: $selection)
            // A helper view that offers live suggestions based on selection.
            SuggestionsView(substrings: getSubstrings(
                text: text, indices: selection.indices(in: text))
        }
        .textSelectionAffinity(.upstream)
    }

    private func getSubstrings(
        text: String, indices: AttributedTextSelection.Indices
    ) -> [Substring] {
        // Resolve substrings representing the current selection...
    }
}

struct SuggestionsView: View { ... }
```

> [!NOTE]
> [Text Selection Affinity](/documentation/swiftui/textselectionaffinity), [Text Editor](/documentation/swiftui/texteditor)

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Structures

- [AttributedTextSelection.Attributes](/documentation/swiftui/attributedtextselection/attributes) A sequence of all attribute values a selection has in a certain text.

## Initializers

- [init()](/documentation/swiftui/attributedtextselection/init()) Initialize the default selection for a new text editor.
- [init(insertionPoint:typingAttributes:)](/documentation/swiftui/attributedtextselection/init(insertionpoint:typingattributes:)) Initialize a selection to a single insertion point.
- [init(range:)](/documentation/swiftui/attributedtextselection/init(range:)) Initialize a selection to a character range.
- [init(ranges:)](/documentation/swiftui/attributedtextselection/init(ranges:)) Initialize a selection to character ranges.

## Instance Methods

- [affinity(in:)](/documentation/swiftui/attributedtextselection/affinity(in:)) Return the selection affinity of the selection.
- [attributes(in:)](/documentation/swiftui/attributedtextselection/attributes(in:)) Obtain a lazy sequence of all attribute values the selection has in a given text.
- [indices(in:)](/documentation/swiftui/attributedtextselection/indices(in:)) The current text selection indices.
- [typingAttributes(in:)](/documentation/swiftui/attributedtextselection/typingattributes(in:)) Returns the typing attributes for a corresponding text.

## Enumerations

- [AttributedTextSelection.Indices](/documentation/swiftui/attributedtextselection/indices) The indices of the current selection.

## Selecting text

- [textSelection(_:)](/documentation/swiftui/view/textselection(_:))
- [TextSelectability](/documentation/swiftui/textselectability)
- [TextSelection](/documentation/swiftui/textselection)
- [textSelectionAffinity(_:)](/documentation/swiftui/view/textselectionaffinity(_:))
- [textSelectionAffinity](/documentation/swiftui/environmentvalues/textselectionaffinity)
- [TextSelectionAffinity](/documentation/swiftui/textselectionaffinity)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
