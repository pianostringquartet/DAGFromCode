---
title: DropProposal
description: The behavior of a drop.
source: https://developer.apple.com/documentation/swiftui/dropproposal
timestamp: 2025-10-29T00:13:58.936Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# DropProposal

**Available on:** iOS 13.4+, iPadOS 13.4+, Mac Catalyst 13.4+, macOS 10.15+, visionOS 1.0+

> The behavior of a drop.

```swift
struct DropProposal
```

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [CustomDebugStringConvertible](/documentation/Swift/CustomDebugStringConvertible)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Creating a drop proposal

- [init(operation:)](/documentation/swiftui/dropproposal/init(operation:))
- [operation](/documentation/swiftui/dropproposal/operation) The drop operation that the drop proposes to perform.

## Initializers

- [init(withinApplication:outsideApplication:)](/documentation/swiftui/dropproposal/init(withinapplication:outsideapplication:))

## Instance Properties

- [operationOutsideApplication](/documentation/swiftui/dropproposal/operationoutsideapplication) The drop operation for drops outside the source application.

## Moving items using item providers

- [itemProvider(_:)](/documentation/swiftui/view/itemprovider(_:))
- [onDrag(_:preview:)](/documentation/swiftui/view/ondrag(_:preview:))
- [onDrag(_:)](/documentation/swiftui/view/ondrag(_:))
- [onDrop(of:isTargeted:perform:)](/documentation/swiftui/view/ondrop(of:istargeted:perform:))
- [onDrop(of:delegate:)](/documentation/swiftui/view/ondrop(of:delegate:))
- [DropDelegate](/documentation/swiftui/dropdelegate)
- [DropOperation](/documentation/swiftui/dropoperation)
- [DropInfo](/documentation/swiftui/dropinfo)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
