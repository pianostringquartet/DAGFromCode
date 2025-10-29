---
title: update()
description: Updates the underlying value of the stored value.
source: https://developer.apple.com/documentation/swiftui/dynamicproperty/update()
timestamp: 2025-10-29T00:09:59.516Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [dynamicproperty](/documentation/swiftui/dynamicproperty)

**Instance Method**

# update()

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Updates the underlying value of the stored value.

```swift
mutating func update()
```

## Discussion

SwiftUI calls this function before rendering a view’s [body](/documentation/swiftui/view/body-8kl5o) to ensure the view has the most recent value.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
