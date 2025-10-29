---
title: DropDelegate
description: An interface that you implement to interact with a drop operation in a view modified to accept drops.
source: https://developer.apple.com/documentation/swiftui/dropdelegate
timestamp: 2025-10-29T00:13:32.361Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# DropDelegate

**Available on:** iOS 13.4+, iPadOS 13.4+, Mac Catalyst 13.4+, macOS 10.15+, visionOS 1.0+

> An interface that you implement to interact with a drop operation in a view modified to accept drops.

```swift
@MainActor @preconcurrency protocol DropDelegate
```

## Overview

The [Drop Delegate](/documentation/swiftui/dropdelegate) protocol provides a comprehensive and flexible way to interact with a drop operation. Specify a drop delegate when you modify a view to accept drops with the [onDrop(of:delegate:)](/documentation/swiftui/view/ondrop(of:delegate:)) method.

Alternatively, for simple drop cases that don’t require the full functionality of a drop delegate, you can modify a view to accept drops using the [onDrop(of:isTargeted:perform:)](/documentation/swiftui/view/ondrop(of:istargeted:perform:)) method. This method handles the drop using a closure you provide as part of the modifier.

## Receiving drop information

- [dropEntered(info:)](/documentation/swiftui/dropdelegate/dropentered(info:)) Tells the delegate a validated drop has entered the modified view.
- [dropExited(info:)](/documentation/swiftui/dropdelegate/dropexited(info:)) Tells the delegate a validated drop operation has exited the modified view.
- [dropUpdated(info:)](/documentation/swiftui/dropdelegate/dropupdated(info:)) Tells the delegate that a validated drop moved inside the modified view.
- [validateDrop(info:)](/documentation/swiftui/dropdelegate/validatedrop(info:)) Tells the delegate that a drop containing items conforming to one of the expected types entered a view that accepts drops.
- [performDrop(info:)](/documentation/swiftui/dropdelegate/performdrop(info:)) Tells the delegate it can request the item provider data from the given information.

## Moving items using item providers

- [itemProvider(_:)](/documentation/swiftui/view/itemprovider(_:))
- [onDrag(_:preview:)](/documentation/swiftui/view/ondrag(_:preview:))
- [onDrag(_:)](/documentation/swiftui/view/ondrag(_:))
- [onDrop(of:isTargeted:perform:)](/documentation/swiftui/view/ondrop(of:istargeted:perform:))
- [onDrop(of:delegate:)](/documentation/swiftui/view/ondrop(of:delegate:))
- [DropProposal](/documentation/swiftui/dropproposal)
- [DropOperation](/documentation/swiftui/dropoperation)
- [DropInfo](/documentation/swiftui/dropinfo)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
