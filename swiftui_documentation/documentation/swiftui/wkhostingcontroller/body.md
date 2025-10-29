---
title: body
description: The root view of the view hierarchy to display for your interface controller.
source: https://developer.apple.com/documentation/swiftui/wkhostingcontroller/body
timestamp: 2025-10-29T00:11:43.521Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [wkhostingcontroller](/documentation/swiftui/wkhostingcontroller)

**Instance Property**

# body

**Available on:** watchOS 6.0+

> The root view of the view hierarchy to display for your interface controller.

```swift
@MainActor @preconcurrency var body: Body { get }
```

## Discussion

Override this property and return the root view of your SwiftUI view hierarchy from your implementation. If you don’t override this property, accessing the default implementation triggers an exception.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
