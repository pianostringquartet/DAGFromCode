---
title: DropOperation
description: Operation types that determine how a drag and drop session resolves when the user drops a drag item.
source: https://developer.apple.com/documentation/swiftui/dropoperation
timestamp: 2025-10-29T00:12:32.101Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Enumeration**

# DropOperation

**Available on:** iOS 13.4+, iPadOS 13.4+, Mac Catalyst 13.4+, macOS 10.15+, visionOS 1.0+

> Operation types that determine how a drag and drop session resolves when the user drops a drag item.

```swift
enum DropOperation
```

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting operation types

- [DropOperation.cancel](/documentation/swiftui/dropoperation/cancel) Cancel the drag operation and transfer no data.
- [DropOperation.copy](/documentation/swiftui/dropoperation/copy) Copy the data to the modified view.
- [DropOperation.forbidden](/documentation/swiftui/dropoperation/forbidden) The drop activity is not allowed at this time or location.
- [DropOperation.move](/documentation/swiftui/dropoperation/move) Move the data represented by the drag items instead of copying it.

## Structures

- [DropOperation.Set](/documentation/swiftui/dropoperation/set) A set of drop operations, corresponding to matching cases in .

## Enumeration Cases

- [DropOperation.alias](/documentation/swiftui/dropoperation/alias)
- [DropOperation.delete](/documentation/swiftui/dropoperation/delete) Delete the data. The item was dragged to Trash or to another destination that semantically represents deletion.

## Moving items using item providers

- [itemProvider(_:)](/documentation/swiftui/view/itemprovider(_:))
- [onDrag(_:preview:)](/documentation/swiftui/view/ondrag(_:preview:))
- [onDrag(_:)](/documentation/swiftui/view/ondrag(_:))
- [onDrop(of:isTargeted:perform:)](/documentation/swiftui/view/ondrop(of:istargeted:perform:))
- [onDrop(of:delegate:)](/documentation/swiftui/view/ondrop(of:delegate:))
- [DropDelegate](/documentation/swiftui/dropdelegate)
- [DropProposal](/documentation/swiftui/dropproposal)
- [DropInfo](/documentation/swiftui/dropinfo)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
