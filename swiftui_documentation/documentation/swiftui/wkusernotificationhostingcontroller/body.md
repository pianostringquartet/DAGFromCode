---
title: body
description: The root view of the view hierarchy to display for your notification interface.
source: https://developer.apple.com/documentation/swiftui/wkusernotificationhostingcontroller/body
timestamp: 2025-10-29T00:12:17.034Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [wkusernotificationhostingcontroller](/documentation/swiftui/wkusernotificationhostingcontroller)

**Instance Property**

# body

**Available on:** watchOS 6.0+

> The root view of the view hierarchy to display for your notification interface.

```swift
@MainActor @preconcurrency var body: Body { get }
```

## Discussion

Override this property and return the root view of your SwiftUI view hierarchy from your implementation. If you don’t override this property, accessing the default implementation triggers an exception.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
