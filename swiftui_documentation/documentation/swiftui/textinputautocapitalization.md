---
title: TextInputAutocapitalization
description: The kind of autocapitalization behavior applied during text input.
source: https://developer.apple.com/documentation/swiftui/textinputautocapitalization
timestamp: 2025-10-29T00:10:16.098Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# TextInputAutocapitalization

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The kind of autocapitalization behavior applied during text input.

```swift
struct TextInputAutocapitalization
```

## Overview

Pass an instance of `TextInputAutocapitalization` to the [textInputAutocapitalization(_:)](/documentation/swiftui/view/textinputautocapitalization(_:)) view modifier.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting autocapitalization options

- [characters](/documentation/swiftui/textinputautocapitalization/characters) Defines an autocapitalizing behavior that will capitalize every letter.
- [sentences](/documentation/swiftui/textinputautocapitalization/sentences) Defines an autocapitalizing behavior that will capitalize the first letter in every sentence.
- [words](/documentation/swiftui/textinputautocapitalization/words) Defines an autocapitalizing behavior that will capitalize the first letter of every word.
- [never](/documentation/swiftui/textinputautocapitalization/never) Defines an autocapitalizing behavior that will not capitalize anything.

## Creating an autocapitalization type

- [init(_:)](/documentation/swiftui/textinputautocapitalization/init(_:)) Creates a new  struct from a  enum.

## Managing text entry

- [autocorrectionDisabled(_:)](/documentation/swiftui/view/autocorrectiondisabled(_:))
- [autocorrectionDisabled](/documentation/swiftui/environmentvalues/autocorrectiondisabled)
- [keyboardType(_:)](/documentation/swiftui/view/keyboardtype(_:))
- [scrollDismissesKeyboard(_:)](/documentation/swiftui/view/scrolldismisseskeyboard(_:))
- [textContentType(_:)](/documentation/swiftui/view/textcontenttype(_:))
- [textInputAutocapitalization(_:)](/documentation/swiftui/view/textinputautocapitalization(_:))
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
