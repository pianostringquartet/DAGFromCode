---
title: updateUIViewController(_:context:)
description: Updates the state of the specified view controller with new information from SwiftUI.
source: https://developer.apple.com/documentation/swiftui/uiviewcontrollerrepresentable/updateuiviewcontroller(_:context:)
timestamp: 2025-10-29T00:12:49.337Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uiviewcontrollerrepresentable](/documentation/swiftui/uiviewcontrollerrepresentable)

**Instance Method**

# updateUIViewController(_:context:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, tvOS 13.0+, visionOS 1.0+

> Updates the state of the specified view controller with new information from SwiftUI.

```swift
@MainActor @preconcurrency func updateUIViewController(_ uiViewController: Self.UIViewControllerType, context: Self.Context)
```

## Parameters

**uiViewController**

Your custom view controller object.



**context**

A context structure containing information about the current state of the system.



## Discussion

When the state of your app changes, SwiftUI updates the portions of your interface affected by those changes. SwiftUI calls this method for any changes affecting the corresponding UIKit view controller. Use this method to update the configuration of your view controller to match the new state information provided in the `context` parameter.

## Creating and updating the view controller

- [makeUIViewController(context:)](/documentation/swiftui/uiviewcontrollerrepresentable/makeuiviewcontroller(context:))
- [UIViewControllerRepresentable.Context](/documentation/swiftui/uiviewcontrollerrepresentable/context)
- [UIViewControllerType](/documentation/swiftui/uiviewcontrollerrepresentable/uiviewcontrollertype)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
