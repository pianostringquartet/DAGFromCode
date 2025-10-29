---
title: transaction(_:)
description: Returns a new version of the modifier that will apply the transaction mutation function  to all transactions within the modifier.
source: https://developer.apple.com/documentation/swiftui/viewmodifier/transaction(_:)
timestamp: 2025-10-29T00:11:30.733Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [viewmodifier](/documentation/swiftui/viewmodifier)

**Instance Method**

# transaction(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Returns a new version of the modifier that will apply the transaction mutation function  to all transactions within the modifier.

```swift
nonisolated func transaction(_ transform: @escaping (inout Transaction) -> Void) -> some ViewModifier
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
