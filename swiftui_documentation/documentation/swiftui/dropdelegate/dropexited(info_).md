---
title: dropExited(info:)
description: Tells the delegate a validated drop operation has exited the modified view.
source: https://developer.apple.com/documentation/swiftui/dropdelegate/dropexited(info:)
timestamp: 2025-10-29T00:12:36.455Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [dropdelegate](/documentation/swiftui/dropdelegate)

**Instance Method**

# dropExited(info:)

**Available on:** iOS 13.4+, iPadOS 13.4+, Mac Catalyst 13.4+, macOS 10.15+, visionOS 1.0+

> Tells the delegate a validated drop operation has exited the modified view.

```swift
@MainActor @preconcurrency func dropExited(info: DropInfo)
```

## Discussion

The default implementation does nothing.

## Receiving drop information

- [dropEntered(info:)](/documentation/swiftui/dropdelegate/dropentered(info:))
- [dropUpdated(info:)](/documentation/swiftui/dropdelegate/dropupdated(info:))
- [validateDrop(info:)](/documentation/swiftui/dropdelegate/validatedrop(info:))
- [performDrop(info:)](/documentation/swiftui/dropdelegate/performdrop(info:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
