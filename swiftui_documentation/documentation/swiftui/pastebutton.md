---
title: PasteButton
description: A system button that reads items from the pasteboard and delivers it to a closure.
source: https://developer.apple.com/documentation/swiftui/pastebutton
timestamp: 2025-10-29T00:13:33.878Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# PasteButton

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 10.15+, visionOS 1.0+

> A system button that reads items from the pasteboard and delivers it to a closure.

```swift
@MainActor @preconcurrency struct PasteButton
```

## Overview

Use a paste button when you want to provide a button for pasting items from the system pasteboard into your app. The system provides a button appearance and label appropriate to the current environment. However, you can use view modifiers like [buttonBorderShape(_:)](/documentation/swiftui/view/buttonbordershape(_:)), [labelStyle(_:)](/documentation/swiftui/view/labelstyle(_:)), and [tint(_:)](/documentation/swiftui/view/tint(_:)) to customize the button in some contexts.

You declare what type of items your app will accept; use a type that conforms to the [Transferable](/documentation/CoreTransferable/Transferable) protocol. When the user taps or clicks the button, your closure receives the pasteboard items in the specified type.

In the following example, a paste button declares that it accepts a string. When the user taps or clicks the button, the sample’s closure receives an array of strings and sets the first as the value of `pastedText`, which updates a nearby [Text](/documentation/swiftui/text) view.

```swift
@State private var pastedText: String = ""

var body: some View {
    HStack {
        PasteButton(payloadType: String.self) { strings in
            pastedText = strings[0]
        }
        Divider()
        Text(pastedText)
        Spacer()
    }
}
```



A paste button automatically validates and invalidates based on changes to the pasteboard on iOS, but not on macOS.

## Conforms To

- [View](/documentation/swiftui/view)

## Creating a paste button

- [init(supportedContentTypes:payloadAction:)](/documentation/swiftui/pastebutton/init(supportedcontenttypes:payloadaction:)) Creates a Paste button that accepts specific types of data from the pasteboard.
- [init(payloadType:onPaste:)](/documentation/swiftui/pastebutton/init(payloadtype:onpaste:)) Creates an instance that accepts values of the specified type.

## Deprecated initializers

- [init(supportedTypes:payloadAction:)](/documentation/swiftui/pastebutton/init(supportedtypes:payloadaction:)) Creates a Paste button that accepts specific types of data from the pasteboard.
- [init(supportedTypes:validator:payloadAction:)](/documentation/swiftui/pastebutton/init(supportedtypes:validator:payloadaction:)) Creates a Paste button that accepts specific types of data from the pasteboard, performing a custom validation of the data before sending it to your app.
- [init(supportedContentTypes:validator:payloadAction:)](/documentation/swiftui/pastebutton/init(supportedcontenttypes:validator:payloadaction:)) Creates a Paste button that accepts specific types of data from the pasteboard, performing a custom validation of the data before sending it to your app.

## Creating special-purpose buttons

- [EditButton](/documentation/swiftui/editbutton)
- [RenameButton](/documentation/swiftui/renamebutton)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
