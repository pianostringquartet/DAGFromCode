---
title: textContentType(_:)
description: Sets the text content type for this view, which the system uses to offer suggestions while the user enters text on macOS.
source: https://developer.apple.com/documentation/swiftui/view/textcontenttype(_:)
timestamp: 2025-10-29T00:09:18.451Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# textContentType(_:)

**Available on:** macOS 11.0+

> Sets the text content type for this view, which the system uses to offer suggestions while the user enters text on macOS.

```swift
nonisolated func textContentType(_ textContentType: NSTextContentType?) -> some View
```

## Parameters

**textContentType**

One of the content types available in the [NSText Content Type](/documentation/AppKit/NSTextContentType) structure that identify the semantic meaning expected for a text-entry area.



## Discussion

Use this method to set the content type for input text. For example, you can configure a [Text Field](/documentation/swiftui/textfield) for the entry of a username:

```swift
TextField("Enter your username", text: $username)
    .textContentType(.username)
```

## Managing text entry

- [autocorrectionDisabled(_:)](/documentation/swiftui/view/autocorrectiondisabled(_:))
- [autocorrectionDisabled](/documentation/swiftui/environmentvalues/autocorrectiondisabled)
- [keyboardType(_:)](/documentation/swiftui/view/keyboardtype(_:))
- [scrollDismissesKeyboard(_:)](/documentation/swiftui/view/scrolldismisseskeyboard(_:))
- [textInputAutocapitalization(_:)](/documentation/swiftui/view/textinputautocapitalization(_:))
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
