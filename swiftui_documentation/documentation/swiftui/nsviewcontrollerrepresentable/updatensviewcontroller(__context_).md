---
title: updateNSViewController(_:context:)
description: Updates the state of the specified view controller with new information from SwiftUI.
source: https://developer.apple.com/documentation/swiftui/nsviewcontrollerrepresentable/updatensviewcontroller(_:context:)
timestamp: 2025-10-29T00:11:19.338Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nsviewcontrollerrepresentable](/documentation/swiftui/nsviewcontrollerrepresentable)

**Instance Method**

# updateNSViewController(_:context:)

**Available on:** macOS 10.15+

> Updates the state of the specified view controller with new information from SwiftUI.

```swift
@MainActor @preconcurrency func updateNSViewController(_ nsViewController: Self.NSViewControllerType, context: Self.Context)
```

## Parameters

**nsViewController**

Your custom view controller object.



**context**

A context structure containing information about the current state of the system.



## Discussion

When the state of your app changes, SwiftUI updates the portions of your interface affected by those changes. SwiftUI calls this method for any changes affecting the corresponding AppKit view controller. Use this method to update the configuration of your view controller to match the new state information provided in the `context` parameter.

## Creating and updating the view controller

- [makeNSViewController(context:)](/documentation/swiftui/nsviewcontrollerrepresentable/makensviewcontroller(context:))
- [NSViewControllerRepresentable.Context](/documentation/swiftui/nsviewcontrollerrepresentable/context)
- [NSViewControllerType](/documentation/swiftui/nsviewcontrollerrepresentable/nsviewcontrollertype)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
