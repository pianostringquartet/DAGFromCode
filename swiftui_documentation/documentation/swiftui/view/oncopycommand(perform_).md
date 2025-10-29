---
title: onCopyCommand(perform:)
description: Adds an action to perform in response to the system’s Copy command.
source: https://developer.apple.com/documentation/swiftui/view/oncopycommand(perform:)
timestamp: 2025-10-29T00:15:29.294Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onCopyCommand(perform:)

**Available on:** macOS 10.15+

> Adds an action to perform in response to the system’s Copy command.

```swift
nonisolated func onCopyCommand(perform payloadAction: (() -> [NSItemProvider])?) -> some View
```

## Parameters

**payloadAction**

An action closure returning the [NSItem Provider](/documentation/Foundation/NSItemProvider) items that should be copied to the Clipboard when the Copy command is triggered. If `action` is `nil`, the Copy command is considered disabled.



## Return Value

A view that triggers `action` when a system Copy command occurs.

## Copying items using item providers

- [onCutCommand(perform:)](/documentation/swiftui/view/oncutcommand(perform:))
- [onPasteCommand(of:perform:)](/documentation/swiftui/view/onpastecommand(of:perform:))
- [onPasteCommand(of:validator:perform:)](/documentation/swiftui/view/onpastecommand(of:validator:perform:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
