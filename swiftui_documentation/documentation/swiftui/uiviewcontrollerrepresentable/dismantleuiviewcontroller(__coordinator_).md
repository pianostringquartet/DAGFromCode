---
title: dismantleUIViewController(_:coordinator:)
description: Cleans up the presented view controller (and coordinator) in anticipation of their removal.
source: https://developer.apple.com/documentation/swiftui/uiviewcontrollerrepresentable/dismantleuiviewcontroller(_:coordinator:)
timestamp: 2025-10-29T00:11:53.620Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uiviewcontrollerrepresentable](/documentation/swiftui/uiviewcontrollerrepresentable)

**Type Method**

# dismantleUIViewController(_:coordinator:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, tvOS 13.0+, visionOS 1.0+

> Cleans up the presented view controller (and coordinator) in anticipation of their removal.

```swift
@MainActor @preconcurrency static func dismantleUIViewController(_ uiViewController: Self.UIViewControllerType, coordinator: Self.Coordinator)
```

## Parameters

**uiViewController**

Your custom view controller object.



**coordinator**

The custom coordinator instance you use to communicate changes back to SwiftUI. If you do not use a custom coordinator, the system provides a default instance.



## Discussion

Use this method to perform additional clean-up work related to your custom view controller. For example, you might use this method to remove observers or update other parts of your SwiftUI interface.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
