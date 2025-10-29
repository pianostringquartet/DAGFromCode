---
title: init(supportedContentTypes:payloadAction:)
description: Creates a Paste button that accepts specific types of data from the pasteboard.
source: https://developer.apple.com/documentation/swiftui/pastebutton/init(supportedcontenttypes:payloadaction:)
timestamp: 2025-10-29T00:15:34.701Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [pastebutton](/documentation/swiftui/pastebutton)

**Initializer**

# init(supportedContentTypes:payloadAction:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 11.0+, visionOS 1.0+

> Creates a Paste button that accepts specific types of data from the pasteboard.

```swift
@MainActor @preconcurrency init(supportedContentTypes: [UTType], payloadAction: @escaping ([NSItemProvider]) -> Void)
```

## Parameters

**supportedContentTypes**

The exact uniform type identifiers supported by the button. If the pasteboard doesn’t contain any of the supported types, the button becomes disabled.



**payloadAction**

The handler to call when the user clicks the Paste button and the pasteboard has items that conform to `supportedContentTypes`. This closure receives an array of item providers that you use to inspect and load the pasteboard data.



## Discussion

Set the contents of `supportedContentTypes` in order of your app’s preference for its supported types. The Paste button takes the most-preferred type that the pasteboard source supports and delivers this to the `payloadAction` closure.

## Creating a paste button

- [init(payloadType:onPaste:)](/documentation/swiftui/pastebutton/init(payloadtype:onpaste:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
