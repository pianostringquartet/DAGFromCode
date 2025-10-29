---
title: autocorrectionDisabled(_:)
description: Sets whether to disable autocorrection for this view.
source: https://developer.apple.com/documentation/swiftui/view/autocorrectiondisabled(_:)
timestamp: 2025-10-29T00:12:43.017Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# autocorrectionDisabled(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 8.0+

> Sets whether to disable autocorrection for this view.

```swift
nonisolated func autocorrectionDisabled(_ disable: Bool = true) -> some View
```

## Parameters

**disable**

A Boolean value that indicates whether autocorrection is disabled for this view. The default value is `true`.



## Discussion

Use this method when the effect of autocorrection would make it more difficult for the user to input information. The entry of proper names and street addresses are examples where autocorrection can negatively affect the user’s ability complete a data entry task.

The example below configures a [Text Field](/documentation/swiftui/textfield) with the default keyboard. Disabling autocorrection allows the user to enter arbitrary text without the autocorrection system offering suggestions or attempting to override their input.

```swift
TextField("1234 Main St.", text: $address)
    .keyboardType(.default)
    .autocorrectionDisabled(true)
```

## Managing text entry

- [autocorrectionDisabled](/documentation/swiftui/environmentvalues/autocorrectiondisabled)
- [keyboardType(_:)](/documentation/swiftui/view/keyboardtype(_:))
- [scrollDismissesKeyboard(_:)](/documentation/swiftui/view/scrolldismisseskeyboard(_:))
- [textContentType(_:)](/documentation/swiftui/view/textcontenttype(_:))
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
