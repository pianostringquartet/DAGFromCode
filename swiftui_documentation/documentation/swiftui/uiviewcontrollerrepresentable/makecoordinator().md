---
title: makeCoordinator()
description: Creates the custom instance that you use to communicate changes from your view controller to other parts of your SwiftUI interface.
source: https://developer.apple.com/documentation/swiftui/uiviewcontrollerrepresentable/makecoordinator()
timestamp: 2025-10-29T00:11:41.073Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uiviewcontrollerrepresentable](/documentation/swiftui/uiviewcontrollerrepresentable)

**Instance Method**

# makeCoordinator()

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, tvOS 13.0+, visionOS 1.0+

> Creates the custom instance that you use to communicate changes from your view controller to other parts of your SwiftUI interface.

```swift
@MainActor @preconcurrency func makeCoordinator() -> Self.Coordinator
```

## Discussion

Implement this method if changes to your view controller might affect other parts of your app. In your implementation, create a custom Swift instance that can communicate with other parts of your interface. For example, you might provide an instance that binds its variables to SwiftUI properties, causing the two to remain synchronized. If your view controller doesn’t interact with other parts of your app, providing a coordinator is unnecessary.

SwiftUI calls this method before calling the [makeUIViewController(context:)](/documentation/swiftui/uiviewcontrollerrepresentable/makeuiviewcontroller(context:)) method. The system provides your coordinator either directly or as part of a context structure when calling the other methods of your representable instance.

## Providing a custom coordinator object

- [Coordinator](/documentation/swiftui/uiviewcontrollerrepresentable/coordinator)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
