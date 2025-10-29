---
title: init(supportedTypes:payloadAction:)
description: Creates a Paste button that accepts specific types of data from the pasteboard.
source: https://developer.apple.com/documentation/swiftui/pastebutton/init(supportedtypes:payloadaction:)
timestamp: 2025-10-29T00:15:34.830Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [pastebutton](/documentation/swiftui/pastebutton)

**Initializer**

# init(supportedTypes:payloadAction:)

**Available on:** macOS 10.15+

> Creates a Paste button that accepts specific types of data from the pasteboard.

```swift
@MainActor @preconcurrency init(supportedTypes: [String], payloadAction: @escaping ([NSItemProvider]) -> Void)
```

## Parameters

**supportedTypes**

The exact uniform type identifiers supported by the button. If the pasteboard doesn’t contain any of the supported types, the button becomes disabled.



**payloadAction**

The handler to call when the user clicks the Paste button, and the pasteboard has items that conform to `supportedTypes`. This closure receives an array of item providers that you use to inspect and load the pasteboard data.



## Discussion

Set the contents of `supportedTypes` in order of your app’s preference for its supported types. The Paste button takes the most-preferred type that the pasteboard source supports and delivers this to the `payloadAction` closure.

## Deprecated initializers

- [init(supportedTypes:validator:payloadAction:)](/documentation/swiftui/pastebutton/init(supportedtypes:validator:payloadaction:))
- [init(supportedContentTypes:validator:payloadAction:)](/documentation/swiftui/pastebutton/init(supportedcontenttypes:validator:payloadaction:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
