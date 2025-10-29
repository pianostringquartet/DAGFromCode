---
title: makeCoordinator()
description: Creates the custom object that you use to communicate changes from your view controller to other parts of your SwiftUI interface.
source: https://developer.apple.com/documentation/swiftui/nsviewcontrollerrepresentable/makecoordinator()
timestamp: 2025-10-29T00:13:06.034Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nsviewcontrollerrepresentable](/documentation/swiftui/nsviewcontrollerrepresentable)

**Instance Method**

# makeCoordinator()

**Available on:** macOS 10.15+

> Creates the custom object that you use to communicate changes from your view controller to other parts of your SwiftUI interface.

```swift
@MainActor @preconcurrency func makeCoordinator() -> Self.Coordinator
```

## Discussion

Implement this method if changes to your view controller might affect other parts of your app. In your implementation, create a custom Swift instance that can communicate with other parts of your interface. For example, you might provide an instance that binds its variables to SwiftUI properties, causing the two to remain synchronized. If your view controller doesn’t interact with other parts of your app, providing a coordinator is unnecessary.

SwiftUI calls this method before calling the [makeNSViewController(context:)](/documentation/swiftui/nsviewcontrollerrepresentable/makensviewcontroller(context:)) method. The system provides your coordinator instance either directly or as part of a context structure when calling the other methods of your representable instance.

## Providing a custom coordinator object

- [Coordinator](/documentation/swiftui/nsviewcontrollerrepresentable/coordinator)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
