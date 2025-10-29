---
title: dropUpdated(info:)
description: Tells the delegate that a validated drop moved inside the modified view.
source: https://developer.apple.com/documentation/swiftui/dropdelegate/dropupdated(info:)
timestamp: 2025-10-29T00:09:55.336Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [dropdelegate](/documentation/swiftui/dropdelegate)

**Instance Method**

# dropUpdated(info:)

**Available on:** iOS 13.4+, iPadOS 13.4+, Mac Catalyst 13.4+, macOS 10.15+, visionOS 1.0+

> Tells the delegate that a validated drop moved inside the modified view.

```swift
@MainActor @preconcurrency func dropUpdated(info: DropInfo) -> DropProposal?
```

## Discussion

Use this method to return a drop proposal containing the operation the delegate intends to perform at the drop [location](/documentation/swiftui/dropinfo/location). The default implementation of this method returns `nil`, which tells the drop to use the last valid returned value or else [copy](/documentation/swiftui/dropoperation/copy).

## Receiving drop information

- [dropEntered(info:)](/documentation/swiftui/dropdelegate/dropentered(info:))
- [dropExited(info:)](/documentation/swiftui/dropdelegate/dropexited(info:))
- [validateDrop(info:)](/documentation/swiftui/dropdelegate/validatedrop(info:))
- [performDrop(info:)](/documentation/swiftui/dropdelegate/performdrop(info:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
