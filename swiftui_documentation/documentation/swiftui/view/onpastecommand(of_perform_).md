---
title: onPasteCommand(of:perform:)
description: Adds an action to perform in response to the system’s Paste command.
source: https://developer.apple.com/documentation/swiftui/view/onpastecommand(of:perform:)
timestamp: 2025-10-29T00:12:43.967Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onPasteCommand(of:perform:)

**Available on:** macOS 11.0+

> Adds an action to perform in response to the system’s Paste command.

```swift
nonisolated func onPasteCommand(of supportedContentTypes: [UTType], perform payloadAction: @escaping ([NSItemProvider]) -> Void) -> some View
```

## Parameters

**supportedContentTypes**

The uniform type identifiers that describe the types of content this view can accept through a paste action. If the Clipboard doesn’t contain any of the supported types, the Paste command doesn’t trigger.



**payloadAction**

The action to perform when the Paste command triggers. The action closure’s parameter contains items from the Clipboard with the types you specify in the `supportedContentTypes` parameter.



## Return Value

A view that triggers `action` when a system Paste command occurs.

## Discussion

Pass an array of uniform type identifiers to the `supportedContentTypes` parameter. Place the higher priority types closer to the beginning of the array. The Clipboard items that the `action` closure receives have the most preferred type out of all the types the source supports.

For example, if your app can handle plain text and rich text, but you prefer rich text, place the rich text type first in the array. If rich text is available when the paste action occurs, the `action` closure passes that rich text along.

## Copying items using item providers

- [onCopyCommand(perform:)](/documentation/swiftui/view/oncopycommand(perform:))
- [onCutCommand(perform:)](/documentation/swiftui/view/oncutcommand(perform:))
- [onPasteCommand(of:validator:perform:)](/documentation/swiftui/view/onpastecommand(of:validator:perform:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
