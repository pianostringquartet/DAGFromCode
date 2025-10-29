---
title: TextSelection
description: Represents a selection of text.
source: https://developer.apple.com/documentation/swiftui/textselection
timestamp: 2025-10-29T00:14:39.338Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# TextSelection

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Represents a selection of text.

```swift
struct TextSelection
```

## Overview

A selection is either an insertion point (e.g. a cursor in the text), a selection over a range of text or on macOS, multiple selections.

This is frequently used to represent selection of text in a `TextField` or `TextEditor`. The following example shows a text editor that leverages text selection to offer live suggestions based on the current selection.

```swift
struct SuggestionTextEditor: View {
    @State var text: String = ""
    @State var selection: TextSelection? = nil

    var body: some View {
        VStack {
            TextEditor(text: $text, selection: $selection)
            // A helper view that offers live suggestions based on selection.
            SuggestionsView(
                substrings: getSubstrings(text: text, indices: selection?.indices))
        }
    }

    private func getSubstrings(
        text: String, indices: TextSelection.Indices?
    ) -> [Substring] {
        // Resolve substrings representing the current selection...
    }
}

struct SuggestionsView: View { ... }
```

You can also use the [textSelectionAffinity(_:)](/documentation/swiftui/view/textselectionaffinity(_:)) modifier to specify a selection affinity on the given hierarchy:

```swift
struct SuggestionTextEditor: View {
    @State var text: String = ""
    @State var selection: TextSelection? = nil

    var body: some View {
        VStack {
            TextEditor(text: $text, selection: $selection)
            // A helper view that offers live suggestions based on selection.
            SuggestionsView(
                substrings: getSubstrings(text: text, indices: selection?.indices))
        }
        .textSelectionAffinity(.upstream)
    }

    private func getSubstrings(
        text: String, indices: TextSelection.Indices?
    ) -> [Substring] {
        // Resolve substrings representing the current selection...
    }
}

struct SuggestionsView: View { ... }
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)

## Initializers

- [init(insertionPoint:)](/documentation/swiftui/textselection/init(insertionpoint:)) Create a selection at a given insertion point.
- [init(range:)](/documentation/swiftui/textselection/init(range:)) Create a single selection with a given range.
- [init(ranges:)](/documentation/swiftui/textselection/init(ranges:)) Create multiple selections with a given range-set.

## Instance Properties

- [affinity](/documentation/swiftui/textselection/affinity) Return the selection affinity of the selection.
- [indices](/documentation/swiftui/textselection/indices-swift.property) Return the current text selection indices.
- [isInsertion](/documentation/swiftui/textselection/isinsertion) Return  if the selection is an insertion point.

## Enumerations

- [TextSelection.Indices](/documentation/swiftui/textselection/indices-swift.enum) The indices of the current selection.

## Selecting text

- [textSelection(_:)](/documentation/swiftui/view/textselection(_:))
- [TextSelectability](/documentation/swiftui/textselectability)
- [textSelectionAffinity(_:)](/documentation/swiftui/view/textselectionaffinity(_:))
- [textSelectionAffinity](/documentation/swiftui/environmentvalues/textselectionaffinity)
- [TextSelectionAffinity](/documentation/swiftui/textselectionaffinity)
- [AttributedTextSelection](/documentation/swiftui/attributedtextselection)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
