---
title: dismantleUIView(_:coordinator:)
description: Cleans up the presented UIKit view (and coordinator) in anticipation of their removal.
source: https://developer.apple.com/documentation/swiftui/uiviewrepresentable/dismantleuiview(_:coordinator:)
timestamp: 2025-10-29T00:14:26.841Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uiviewrepresentable](/documentation/swiftui/uiviewrepresentable)

**Type Method**

# dismantleUIView(_:coordinator:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, tvOS 13.0+, visionOS 1.0+

> Cleans up the presented UIKit view (and coordinator) in anticipation of their removal.

```swift
@MainActor @preconcurrency static func dismantleUIView(_ uiView: Self.UIViewType, coordinator: Self.Coordinator)
```

## Parameters

**uiView**

Your custom view object.



**coordinator**

The custom coordinator instance you use to communicate changes back to SwiftUI. If you do not use a custom coordinator, the system provides a default instance.



## Discussion

Use this method to perform additional clean-up work related to your custom view. For example, you might use this method to remove observers or update other parts of your SwiftUI interface.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
