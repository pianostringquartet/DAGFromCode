---
title: makeCoordinator()
description: Creates the custom instance that you use to communicate changes from your interface object to other parts of your SwiftUI interface.
source: https://developer.apple.com/documentation/swiftui/wkinterfaceobjectrepresentable/makecoordinator()
timestamp: 2025-10-29T00:15:18.318Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [wkinterfaceobjectrepresentable](/documentation/swiftui/wkinterfaceobjectrepresentable)

**Instance Method**

# makeCoordinator()

**Available on:** watchOS 6.0+

> Creates the custom instance that you use to communicate changes from your interface object to other parts of your SwiftUI interface.

```swift
@MainActor @preconcurrency func makeCoordinator() -> Self.Coordinator
```

## Discussion

Implement this method if changes to your interface object might affect other parts of your app. In your implementation, create a custom Swift instance that can communicate with other parts of your interface. For example, you might provide an instance that binds its variables to SwiftUI properties, causing the two to remain synchronized. If your interface object doesn’t interact with other parts of your app, providing a coordinator is unnecessary.

SwiftUI calls this method before calling the [makeWKInterfaceObject(context:)](/documentation/swiftui/wkinterfaceobjectrepresentable/makewkinterfaceobject(context:)) method. The system provides your coordinator either directly or as part of a context structure when calling the other methods of your representable instance.

## Providing a custom coordinator object

- [Coordinator](/documentation/swiftui/wkinterfaceobjectrepresentable/coordinator)
- [WKInterfaceObjectType](/documentation/swiftui/wkinterfaceobjectrepresentable/wkinterfaceobjecttype)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
