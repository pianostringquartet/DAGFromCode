---
title: dismantleNSViewController(_:coordinator:)
description: Cleans up the presented view controller (and coordinator) in anticipation of its removal.
source: https://developer.apple.com/documentation/swiftui/nsviewcontrollerrepresentable/dismantlensviewcontroller(_:coordinator:)
timestamp: 2025-10-29T00:09:33.252Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nsviewcontrollerrepresentable](/documentation/swiftui/nsviewcontrollerrepresentable)

**Type Method**

# dismantleNSViewController(_:coordinator:)

**Available on:** macOS 10.15+

> Cleans up the presented view controller (and coordinator) in anticipation of its removal.

```swift
@MainActor @preconcurrency static func dismantleNSViewController(_ nsViewController: Self.NSViewControllerType, coordinator: Self.Coordinator)
```

## Parameters

**nsViewController**

Your custom view controller object.



**coordinator**

The custom coordinator instance you use to communicate changes back to SwiftUI. If you do not use a custom coordinator, the system provides a default instance.



## Discussion

Use this method to perform additional clean-up work related to your custom view controller. For example, you might use this method to remove observers or update other parts of your SwiftUI interface.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
