---
title: performDrop(info:)
description: Tells the delegate it can request the item provider data from the given information.
source: https://developer.apple.com/documentation/swiftui/dropdelegate/performdrop(info:)
timestamp: 2025-10-29T00:13:14.206Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [dropdelegate](/documentation/swiftui/dropdelegate)

**Instance Method**

# performDrop(info:)

**Available on:** iOS 13.4+, iPadOS 13.4+, Mac Catalyst 13.4+, macOS 10.15+, visionOS 1.0+

> Tells the delegate it can request the item provider data from the given information.

```swift
@MainActor @preconcurrency func performDrop(info: DropInfo) -> Bool
```

## Return Value

A Boolean that is `true` if the drop was successful, `false` otherwise.

## Discussion

Incorporate the received data into your app’s data model as appropriate.

Make sure to start loading the contents of `NSItemProvider` instances from [Drop Info](/documentation/swiftui/dropinfo) within the scope of this method. Do not perform loading asynchronously on a different actor. Loading the contents may finish later, but it must start here. For security reasons, the drop receiver can access the dropped payload only before this method returns.

## Receiving drop information

- [dropEntered(info:)](/documentation/swiftui/dropdelegate/dropentered(info:))
- [dropExited(info:)](/documentation/swiftui/dropdelegate/dropexited(info:))
- [dropUpdated(info:)](/documentation/swiftui/dropdelegate/dropupdated(info:))
- [validateDrop(info:)](/documentation/swiftui/dropdelegate/validatedrop(info:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
