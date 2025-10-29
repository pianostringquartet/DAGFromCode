---
title: sizeThatFits(_:nsViewController:context:)
description: Given a proposed size, returns the preferred size of the composite view.
source: https://developer.apple.com/documentation/swiftui/nsviewcontrollerrepresentable/sizethatfits(_:nsviewcontroller:context:)
timestamp: 2025-10-29T00:09:32.231Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nsviewcontrollerrepresentable](/documentation/swiftui/nsviewcontrollerrepresentable)

**Instance Method**

# sizeThatFits(_:nsViewController:context:)

**Available on:** macOS 13.0+

> Given a proposed size, returns the preferred size of the composite view.

```swift
@MainActor @preconcurrency func sizeThatFits(_ proposal: ProposedViewSize, nsViewController: Self.NSViewControllerType, context: Self.Context) -> CGSize?
```

## Parameters

**proposal**

The proposed size for the view controller.



**nsViewController**

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
