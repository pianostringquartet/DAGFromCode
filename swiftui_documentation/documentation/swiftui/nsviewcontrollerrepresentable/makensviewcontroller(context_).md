---
title: makeNSViewController(context:)
description: Creates the view controller object and configures its initial state.
source: https://developer.apple.com/documentation/swiftui/nsviewcontrollerrepresentable/makensviewcontroller(context:)
timestamp: 2025-10-29T00:12:28.260Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nsviewcontrollerrepresentable](/documentation/swiftui/nsviewcontrollerrepresentable)

**Instance Method**

# makeNSViewController(context:)

**Available on:** macOS 10.15+

> Creates the view controller object and configures its initial state.

```swift
@MainActor @preconcurrency func makeNSViewController(context: Self.Context) -> Self.NSViewControllerType
```

## Parameters

**context**

A context structure containing information about the current state of the system.



## Return Value

Your AppKit view controller configured with the provided information.

## Discussion

You must implement this method and use it to create your view controller object. Create the view controller using your app’s current data and contents of the `context` parameter. The system calls this method only once, when it creates your view controller for the first time. For all subsequent updates, the system calls the [updateNSViewController(_:context:)](/documentation/swiftui/nsviewcontrollerrepresentable/updatensviewcontroller(_:context:)) method.

## Creating and updating the view controller

- [updateNSViewController(_:context:)](/documentation/swiftui/nsviewcontrollerrepresentable/updatensviewcontroller(_:context:))
- [NSViewControllerRepresentable.Context](/documentation/swiftui/nsviewcontrollerrepresentable/context)
- [NSViewControllerType](/documentation/swiftui/nsviewcontrollerrepresentable/nsviewcontrollertype)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
