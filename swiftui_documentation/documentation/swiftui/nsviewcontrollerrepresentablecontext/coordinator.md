---
title: coordinator
description: An object you use to communicate your AppKit view controller’s behavior and state out to SwiftUI objects.
source: https://developer.apple.com/documentation/swiftui/nsviewcontrollerrepresentablecontext/coordinator
timestamp: 2025-10-29T00:11:33.213Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nsviewcontrollerrepresentablecontext](/documentation/swiftui/nsviewcontrollerrepresentablecontext)

**Instance Property**

# coordinator

**Available on:** macOS 10.15+

> An object you use to communicate your AppKit view controller’s behavior and state out to SwiftUI objects.

```swift
@MainActor @preconcurrency let coordinator: ViewController.Coordinator
```

## Discussion

The coordinator is a custom object you define. When updating your view controller, communicate changes to SwiftUI by updating the properties of your coordinator, or by calling relevant methods to make those changes. The implementation of those properties and methods are responsible for updating the appropriate SwiftUI values. For example, you might define a property in your coordinator that binds to a SwiftUI value, as shown in the following code example. Changing the property updates the value of the corresponding SwiftUI variable.

```swift
class Coordinator: NSObject {
   @Binding var rating: Int
   init(rating: Binding<Int>) {
      $rating = rating
   }
}
```

To create and configure your custom coordinator, implement the [makeCoordinator()](/documentation/swiftui/nsviewcontrollerrepresentable/makecoordinator()) method of your [NSView Controller Representable](/documentation/swiftui/nsviewcontrollerrepresentable) object.

## Coordinating view-related interactions

- [transaction](/documentation/swiftui/nsviewcontrollerrepresentablecontext/transaction)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
