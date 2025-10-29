---
title: sizeThatFits(_:uiViewController:context:)
description: Given a proposed size, returns the preferred size of the composite view.
source: https://developer.apple.com/documentation/swiftui/uiviewcontrollerrepresentable/sizethatfits(_:uiviewcontroller:context:)
timestamp: 2025-10-29T00:12:58.343Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uiviewcontrollerrepresentable](/documentation/swiftui/uiviewcontrollerrepresentable)

**Instance Method**

# sizeThatFits(_:uiViewController:context:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, tvOS 16.0+, visionOS 1.0+

> Given a proposed size, returns the preferred size of the composite view.

```swift
@MainActor @preconcurrency func sizeThatFits(_ proposal: ProposedViewSize, uiViewController: Self.UIViewControllerType, context: Self.Context) -> CGSize?
```

## Parameters

**proposal**

The proposed size for the view controller.



**uiViewController**

Your custom view controller object.



**context**

A context structure containing information about the current state of the system.



## Return Value

The composite size of the represented view controller. Returning a value of `nil` indicates that the system should use the default sizing algorithm.

## Discussion

This method may be called more than once with different proposed sizes during the same layout pass. SwiftUI views choose their own size, so one of the values returned from this function will always be used as the actual size of the composite view.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
