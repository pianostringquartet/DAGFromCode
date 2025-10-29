---
title: dropEntered(info:)
description: Tells the delegate a validated drop has entered the modified view.
source: https://developer.apple.com/documentation/swiftui/dropdelegate/dropentered(info:)
timestamp: 2025-10-29T00:10:19.244Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [dropdelegate](/documentation/swiftui/dropdelegate)

**Instance Method**

# dropEntered(info:)

**Available on:** iOS 13.4+, iPadOS 13.4+, Mac Catalyst 13.4+, macOS 10.15+, visionOS 1.0+

> Tells the delegate a validated drop has entered the modified view.

```swift
@MainActor @preconcurrency func dropEntered(info: DropInfo)
```

## Discussion

The default implementation does nothing.

## Receiving drop information

- [dropExited(info:)](/documentation/swiftui/dropdelegate/dropexited(info:))
- [dropUpdated(info:)](/documentation/swiftui/dropdelegate/dropupdated(info:))
- [validateDrop(info:)](/documentation/swiftui/dropdelegate/validatedrop(info:))
- [performDrop(info:)](/documentation/swiftui/dropdelegate/performdrop(info:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
