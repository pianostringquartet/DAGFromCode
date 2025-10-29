---
title: validateDrop(info:)
description: Tells the delegate that a drop containing items conforming to one of the expected types entered a view that accepts drops.
source: https://developer.apple.com/documentation/swiftui/dropdelegate/validatedrop(info:)
timestamp: 2025-10-29T00:09:41.901Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [dropdelegate](/documentation/swiftui/dropdelegate)

**Instance Method**

# validateDrop(info:)

**Available on:** iOS 13.4+, iPadOS 13.4+, Mac Catalyst 13.4+, macOS 10.15+, visionOS 1.0+

> Tells the delegate that a drop containing items conforming to one of the expected types entered a view that accepts drops.

```swift
@MainActor @preconcurrency func validateDrop(info: DropInfo) -> Bool
```

## Discussion

Specify the expected types when you apply the drop modifier to the view. The default implementation returns `true`.

## Receiving drop information

- [dropEntered(info:)](/documentation/swiftui/dropdelegate/dropentered(info:))
- [dropExited(info:)](/documentation/swiftui/dropdelegate/dropexited(info:))
- [dropUpdated(info:)](/documentation/swiftui/dropdelegate/dropupdated(info:))
- [performDrop(info:)](/documentation/swiftui/dropdelegate/performdrop(info:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
