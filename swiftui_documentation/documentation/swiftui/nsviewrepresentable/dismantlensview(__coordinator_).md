---
title: dismantleNSView(_:coordinator:)
description: Cleans up the presented AppKit view (and coordinator) in anticipation of their removal.
source: https://developer.apple.com/documentation/swiftui/nsviewrepresentable/dismantlensview(_:coordinator:)
timestamp: 2025-10-29T00:13:29.329Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nsviewrepresentable](/documentation/swiftui/nsviewrepresentable)

**Type Method**

# dismantleNSView(_:coordinator:)

**Available on:** macOS 10.15+

> Cleans up the presented AppKit view (and coordinator) in anticipation of their removal.

```swift
@MainActor @preconcurrency static func dismantleNSView(_ nsView: Self.NSViewType, coordinator: Self.Coordinator)
```

## Parameters

**nsView**

Your custom view object.



**coordinator**

The custom coordinator you use to communicate changes back to SwiftUI. If you do not use a custom coordinator instance, the system provides a default instance.



## Discussion

Use this method to perform additional clean-up work related to your custom view. For example, you might use this method to remove observers or update other parts of your SwiftUI interface.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
