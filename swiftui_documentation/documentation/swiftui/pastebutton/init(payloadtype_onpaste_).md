---
title: init(payloadType:onPaste:)
description: Creates an instance that accepts values of the specified type.
source: https://developer.apple.com/documentation/swiftui/pastebutton/init(payloadtype:onpaste:)
timestamp: 2025-10-29T00:15:34.854Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [pastebutton](/documentation/swiftui/pastebutton)

**Initializer**

# init(payloadType:onPaste:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+

> Creates an instance that accepts values of the specified type.

```swift
@MainActor @preconcurrency init<T>(payloadType: T.Type, onPaste: @escaping ([T]) -> Void) where T : Transferable
```

## Parameters

**onPaste**

The handler to call on trigger of the button with at least one item of the specified `Transferable` type from the pasteboard.



## Creating a paste button

- [init(supportedContentTypes:payloadAction:)](/documentation/swiftui/pastebutton/init(supportedcontenttypes:payloadaction:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
