---
title: textInputAutocapitalization(_:)
description: Sets how often the shift key in the keyboard is automatically enabled.
source: https://developer.apple.com/documentation/swiftui/view/textinputautocapitalization(_:)
timestamp: 2025-10-29T00:09:52.490Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# textInputAutocapitalization(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Sets how often the shift key in the keyboard is automatically enabled.

```swift
nonisolated func textInputAutocapitalization(_ autocapitalization: TextInputAutocapitalization?) -> some View
```

## Parameters

**autocapitalization**

One of the capitalizing behaviors defined in the [Text Input Autocapitalization](/documentation/swiftui/textinputautocapitalization) struct or nil.



## Discussion

Use `textInputAutocapitalization(_:)` when you need to automatically capitalize words, sentences, or other text like proper nouns.

In example below, as the user enters text the shift key is automatically enabled before every word:

```swift
TextField("Last, First", text: $fullName)
    .textInputAutocapitalization(.words)
```

The [Text Input Autocapitalization](/documentation/swiftui/textinputautocapitalization) struct defines the available autocapitalizing behavior. Providing `nil` to  this view modifier does not change the autocapitalization behavior. The default is `TextInputAutocapitalization.sentences`.

## Managing text entry

- [autocorrectionDisabled(_:)](/documentation/swiftui/view/autocorrectiondisabled(_:))
- [autocorrectionDisabled](/documentation/swiftui/environmentvalues/autocorrectiondisabled)
- [keyboardType(_:)](/documentation/swiftui/view/keyboardtype(_:))
- [scrollDismissesKeyboard(_:)](/documentation/swiftui/view/scrolldismisseskeyboard(_:))
- [textContentType(_:)](/documentation/swiftui/view/textcontenttype(_:))
- [TextInputAutocapitalization](/documentation/swiftui/textinputautocapitalization)
- [textInputCompletion(_:)](/documentation/swiftui/view/textinputcompletion(_:))
- [textInputSuggestions(_:)](/documentation/swiftui/view/textinputsuggestions(_:))
- [textInputSuggestions(_:content:)](/documentation/swiftui/view/textinputsuggestions(_:content:))
- [textInputSuggestions(_:id:content:)](/documentation/swiftui/view/textinputsuggestions(_:id:content:))
- [textContentType(_:)](/documentation/swiftui/view/textcontenttype(_:)-4dqqb)
- [textContentType(_:)](/documentation/swiftui/view/textcontenttype(_:)-6fic1)
- [textContentType(_:)](/documentation/swiftui/view/textcontenttype(_:)-ufdv)
- [TextInputFormattingControlPlacement](/documentation/swiftui/textinputformattingcontrolplacement)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
