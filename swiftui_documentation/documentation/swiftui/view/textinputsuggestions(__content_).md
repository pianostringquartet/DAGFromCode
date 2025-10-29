---
title: textInputSuggestions(_:content:)
description: Configures the text input suggestions for this view.
source: https://developer.apple.com/documentation/swiftui/view/textinputsuggestions(_:content:)
timestamp: 2025-10-29T00:15:17.913Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# textInputSuggestions(_:content:)

**Available on:** macOS 15.0+

> Configures the text input suggestions for this view.

```swift
nonisolated func textInputSuggestions<Data, Content>(_ data: Data, @ViewBuilder content: @escaping (Data.Element) -> Content) -> some View where Data : RandomAccessCollection, Content : View, Data.Element : Identifiable
```

## Parameters

**data**

The data that is used to create views dynamically.



**content**

The view builder that creates views dynamically.



## Discussion

You can suggest text completions during a text input operation by providing data to this modifier. The interface presents the suggestion views as a list of choices when someone activates the text editing interface.

Associate a string with each suggestion view by adding the [textInputCompletion(_:)](/documentation/swiftui/view/textinputcompletion(_:)) modifier to the view.

Use `Label` to get platform-standard visual representations of suggestion text accompanied with images, and `Section` for labelled sections of results.

## Managing text entry

- [autocorrectionDisabled(_:)](/documentation/swiftui/view/autocorrectiondisabled(_:))
- [autocorrectionDisabled](/documentation/swiftui/environmentvalues/autocorrectiondisabled)
- [keyboardType(_:)](/documentation/swiftui/view/keyboardtype(_:))
- [scrollDismissesKeyboard(_:)](/documentation/swiftui/view/scrolldismisseskeyboard(_:))
- [textContentType(_:)](/documentation/swiftui/view/textcontenttype(_:))
- [textInputAutocapitalization(_:)](/documentation/swiftui/view/textinputautocapitalization(_:))
- [TextInputAutocapitalization](/documentation/swiftui/textinputautocapitalization)
- [textInputCompletion(_:)](/documentation/swiftui/view/textinputcompletion(_:))
- [textInputSuggestions(_:)](/documentation/swiftui/view/textinputsuggestions(_:))
- [textInputSuggestions(_:id:content:)](/documentation/swiftui/view/textinputsuggestions(_:id:content:))
- [textContentType(_:)](/documentation/swiftui/view/textcontenttype(_:)-4dqqb)
- [textContentType(_:)](/documentation/swiftui/view/textcontenttype(_:)-6fic1)
- [textContentType(_:)](/documentation/swiftui/view/textcontenttype(_:)-ufdv)
- [TextInputFormattingControlPlacement](/documentation/swiftui/textinputformattingcontrolplacement)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
