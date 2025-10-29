---
title: makeCoordinator()
description: Creates the custom instance that you use to communicate changes from your view to other parts of your SwiftUI interface.
source: https://developer.apple.com/documentation/swiftui/nsviewrepresentable/makecoordinator()
timestamp: 2025-10-29T00:09:49.072Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nsviewrepresentable](/documentation/swiftui/nsviewrepresentable)

**Instance Method**

# makeCoordinator()

**Available on:** macOS 10.15+

> Creates the custom instance that you use to communicate changes from your view to other parts of your SwiftUI interface.

```swift
@MainActor @preconcurrency func makeCoordinator() -> Self.Coordinator
```

## Discussion

Implement this method if changes to your view might affect other parts of your app. In your implementation, create a custom Swift instance that can communicate with other parts of your interface. For example, you might provide an instance that binds its variables to SwiftUI properties, causing the two to remain synchronized. If your view doesn’t interact with other parts of your app, you don’t have to provide a coordinator.

SwiftUI calls this method before calling the [makeNSView(context:)](/documentation/swiftui/nsviewrepresentable/makensview(context:)) method. The system provides your coordinator instance either directly or as part of a context structure when calling the other methods of your representable instance.

## Providing a custom coordinator object

- [Coordinator](/documentation/swiftui/nsviewrepresentable/coordinator)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
