---
title: updateWKInterfaceObject(_:context:)
description: Updates the presented WatchKit interface object (and its coordinator) to the latest configuration.
source: https://developer.apple.com/documentation/swiftui/wkinterfaceobjectrepresentable/updatewkinterfaceobject(_:context:)
timestamp: 2025-10-29T00:14:24.696Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [wkinterfaceobjectrepresentable](/documentation/swiftui/wkinterfaceobjectrepresentable)

**Instance Method**

# updateWKInterfaceObject(_:context:)

**Available on:** watchOS 6.0+

> Updates the presented WatchKit interface object (and its coordinator) to the latest configuration.

```swift
@MainActor @preconcurrency func updateWKInterfaceObject(_ wkInterfaceObject: Self.WKInterfaceObjectType, context: Self.Context)
```

## Parameters

**wkInterfaceObject**

Your custom interface object.



**context**

A context structure containing information about the current state of the system.



## Discussion

When the state of your app changes, SwiftUI updates the portions of your interface affected by those changes. SwiftUI calls this method for any changes affecting the corresponding interface object. Use this method to update the configuration of your object to match the new state information provided in the `context` parameter.

## Creating and updating the interface object

- [makeWKInterfaceObject(context:)](/documentation/swiftui/wkinterfaceobjectrepresentable/makewkinterfaceobject(context:))
- [WKInterfaceObjectRepresentable.Context](/documentation/swiftui/wkinterfaceobjectrepresentable/context)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
