---
title: cuttable(for:action:)
description: Specifies an action that moves items to the Clipboard in response to the system’s Cut command.
source: https://developer.apple.com/documentation/swiftui/view/cuttable(for:action:)
timestamp: 2025-10-29T00:15:32.361Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# cuttable(for:action:)

**Available on:** macOS 13.0+

> Specifies an action that moves items to the Clipboard in response to the system’s Cut command.

```swift
nonisolated func cuttable<T>(for payloadType: T.Type = T.self, action: @escaping () -> [T]) -> some View where T : Transferable
```

## Parameters

**payloadType**

The type of items to cut.



**action**

A closure that you implement to delete the selected items from the collection, and return them for addition to the Clipboard. The items must conform to the [Transferable](/documentation/CoreTransferable/Transferable) protocol.



## Return Value

A view that sends one or more items to the Clipboard in response to a Cut command.

## Discussion

Use this modifier to remove one or more items from a collection of items and then move the items to the Clipboard when someone issues a Cut command. People issue a Cut command by choosing Edit > Cut from the app’s menu, or by using the Command-X keyboard shortcut. The system enables the Cut command for your app when it detects cuttable content.

For example, the following code enables people to remove bird names from a list of birds:

```swift
struct CuttableExample: View {
    @State private var birds = ["owl", "parrot", "swift"]
    @State private var selection: Set<String> = []

    var body: some View {
        List(birds, id: \.self, selection: $selection) {
            Text($0)
        }
        .cuttable(for: String.self) {
            for bird in selection {
                birds.removeAll(where: { $0 == bird })
            }
            return Array(selection)
        }
    }
}
```

When someone selects “owl” and issues a Cut command, the `action` closure removes the selected item from the list and returns it. In response, SwiftUI moves it to the Clipboard. If you want to copy the item without removing it, use the [copyable(_:)](/documentation/swiftui/view/copyable(_:)) modifier instead.

> [!NOTE]
> To enable people to cut using a custom action — like from a context menu item — rather than using the system Cut command, update the Clipboard directly using an [NSPasteboard](/documentation/AppKit/NSPasteboard) or a [UIPasteboard](/documentation/UIKit/UIPasteboard) instance.

## Copying transferable items

- [copyable(_:)](/documentation/swiftui/view/copyable(_:))
- [pasteDestination(for:action:validator:)](/documentation/swiftui/view/pastedestination(for:action:validator:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
