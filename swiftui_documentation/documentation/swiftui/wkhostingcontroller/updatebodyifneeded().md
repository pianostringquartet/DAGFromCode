---
title: updateBodyIfNeeded()
description: Updates the interface controller’s set of views immediately, if updates are pending.
source: https://developer.apple.com/documentation/swiftui/wkhostingcontroller/updatebodyifneeded()
timestamp: 2025-10-29T00:13:15.357Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [wkhostingcontroller](/documentation/swiftui/wkhostingcontroller)

**Instance Method**

# updateBodyIfNeeded()

**Available on:** watchOS 6.0+

> Updates the interface controller’s set of views immediately, if updates are pending.

```swift
@MainActor @preconcurrency func updateBodyIfNeeded()
```

## Discussion

Calling this method forces the hosting controller to update its current set of views, but only if there are pending changes. If there are no pending changes, this method does nothing.

To mark the interface controller as needing an update, call [setNeedsBodyUpdate()](/documentation/swiftui/wkhostingcontroller/setneedsbodyupdate()).

## Updating the root view

- [setNeedsBodyUpdate()](/documentation/swiftui/wkhostingcontroller/setneedsbodyupdate())

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
