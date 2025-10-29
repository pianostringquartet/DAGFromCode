---
title: dismantleWKInterfaceObject(_:coordinator:)
description: Cleans up the presented WatchKit interface object (and its coordinator) in anticipation of their removal.
source: https://developer.apple.com/documentation/swiftui/wkinterfaceobjectrepresentable/dismantlewkinterfaceobject(_:coordinator:)
timestamp: 2025-10-29T00:13:01.324Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [wkinterfaceobjectrepresentable](/documentation/swiftui/wkinterfaceobjectrepresentable)

**Type Method**

# dismantleWKInterfaceObject(_:coordinator:)

**Available on:** watchOS 6.0+

> Cleans up the presented WatchKit interface object (and its coordinator) in anticipation of their removal.

```swift
@MainActor @preconcurrency static func dismantleWKInterfaceObject(_ wkInterfaceObject: Self.WKInterfaceObjectType, coordinator: Self.Coordinator)
```

## Parameters

**wkInterfaceObject**

Your custom interface object.



**coordinator**

The custom coordinator instance you use to communicate changes back to SwiftUI. If you do not use a custom coordinator, the system provides a default instance.



## Discussion

Use this method to perform additional clean-up work related to your custom interface object. For example, you might use this method to remove observers or update other parts of your SwiftUI interface.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
