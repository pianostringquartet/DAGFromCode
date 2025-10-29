---
title: makeUIViewController(context:)
description: Creates the view controller object and configures its initial state.
source: https://developer.apple.com/documentation/swiftui/uiviewcontrollerrepresentable/makeuiviewcontroller(context:)
timestamp: 2025-10-29T00:11:20.392Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uiviewcontrollerrepresentable](/documentation/swiftui/uiviewcontrollerrepresentable)

**Instance Method**

# makeUIViewController(context:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, tvOS 13.0+, visionOS 1.0+

> Creates the view controller object and configures its initial state.

```swift
@MainActor @preconcurrency func makeUIViewController(context: Self.Context) -> Self.UIViewControllerType
```

## Parameters

**context**

A context structure containing information about the current state of the system.



## Return Value

Your UIKit view controller configured with the provided information.

## Discussion

You must implement this method and use it to create your view controller object. Create the view controller using your app’s current data and contents of the `context` parameter. The system calls this method only once, when it creates your view controller for the first time. For all subsequent updates, the system calls the [updateUIViewController(_:context:)](/documentation/swiftui/uiviewcontrollerrepresentable/updateuiviewcontroller(_:context:)) method.

## Creating and updating the view controller

- [updateUIViewController(_:context:)](/documentation/swiftui/uiviewcontrollerrepresentable/updateuiviewcontroller(_:context:))
- [UIViewControllerRepresentable.Context](/documentation/swiftui/uiviewcontrollerrepresentable/context)
- [UIViewControllerType](/documentation/swiftui/uiviewcontrollerrepresentable/uiviewcontrollertype)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
