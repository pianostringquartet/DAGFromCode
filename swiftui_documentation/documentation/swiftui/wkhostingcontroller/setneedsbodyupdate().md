---
title: setNeedsBodyUpdate()
description: Invalidates the current SwiftUI views and triggers an update during the next cycle.
source: https://developer.apple.com/documentation/swiftui/wkhostingcontroller/setneedsbodyupdate()
timestamp: 2025-10-29T00:12:35.565Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [wkhostingcontroller](/documentation/swiftui/wkhostingcontroller)

**Instance Method**

# setNeedsBodyUpdate()

**Available on:** watchOS 6.0+

> Invalidates the current SwiftUI views and triggers an update during the next cycle.

```swift
@MainActor @preconcurrency func setNeedsBodyUpdate()
```

## Discussion

Call this method to mark the views of the hosting controller as needing an update. During the next update cycle, the hosting controller fetches an updated set of views from its [body](/documentation/swiftui/wkhostingcontroller/body) property.

## Updating the root view

- [updateBodyIfNeeded()](/documentation/swiftui/wkhostingcontroller/updatebodyifneeded())

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
