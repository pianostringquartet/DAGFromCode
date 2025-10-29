---
title: init(supportedTypes:validator:payloadAction:)
description: Creates a Paste button that accepts specific types of data from the pasteboard, performing a custom validation of the data before sending it to your app.
source: https://developer.apple.com/documentation/swiftui/pastebutton/init(supportedtypes:validator:payloadaction:)
timestamp: 2025-10-29T00:15:34.903Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [pastebutton](/documentation/swiftui/pastebutton)

**Initializer**

# init(supportedTypes:validator:payloadAction:)

**Available on:** macOS 10.15+

> Creates a Paste button that accepts specific types of data from the pasteboard, performing a custom validation of the data before sending it to your app.

```swift
@MainActor @preconcurrency init<Payload>(supportedTypes: [String], validator: @escaping ([NSItemProvider]) -> Payload?, payloadAction: @escaping (Payload) -> Void)
```

## Parameters

**supportedTypes**

The exact uniform type identifiers supported by the button. If the pasteboard doesn’t contain any of the supported types, the button becomes disabled.



**validator**

A handler that receives those contents of the pasteboard that conform to `payloadAction`. Load and inspect these items to determine whether to validate the button. If you load a valid item, return it from this closure. If the pasteboard doesn’t contain any valid items, return `nil` to invalidate the button.



**payloadAction**

The handler called when the user clicks the button. This closure receives the preprocessed result of `validator`.



## Discussion

Set the contents of `supportedTypes` in order of your app’s preference for its supported types. The Paste button takes the most-preferred type that the pasteboard source supports and delivers this to the `validator` closure.

## Deprecated initializers

- [init(supportedTypes:payloadAction:)](/documentation/swiftui/pastebutton/init(supportedtypes:payloadaction:))
- [init(supportedContentTypes:validator:payloadAction:)](/documentation/swiftui/pastebutton/init(supportedcontenttypes:validator:payloadaction:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
