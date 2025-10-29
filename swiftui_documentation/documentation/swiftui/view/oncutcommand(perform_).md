---
title: onCutCommand(perform:)
description: Adds an action to perform in response to the system’s Cut command.
source: https://developer.apple.com/documentation/swiftui/view/oncutcommand(perform:)
timestamp: 2025-10-29T00:15:29.319Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onCutCommand(perform:)

**Available on:** macOS 10.15+

> Adds an action to perform in response to the system’s Cut command.

```swift
nonisolated func onCutCommand(perform payloadAction: (() -> [NSItemProvider])?) -> some View
```

## Parameters

**payloadAction**

An action closure that should delete the selected data and return [NSItem Provider](/documentation/Foundation/NSItemProvider) items corresponding to that data, which should be written to the Clipboard. If `action` is `nil`, the Cut command is considered disabled.



## Return Value

A view that triggers `action` when a system Cut command occurs.

## Copying items using item providers

- [onCopyCommand(perform:)](/documentation/swiftui/view/oncopycommand(perform:))
- [onPasteCommand(of:perform:)](/documentation/swiftui/view/onpastecommand(of:perform:))
- [onPasteCommand(of:validator:perform:)](/documentation/swiftui/view/onpastecommand(of:validator:perform:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
