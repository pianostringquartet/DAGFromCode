---
title: makeWKInterfaceObject(context:)
description: Creates a WatchKit interface object and configures its initial state.
source: https://developer.apple.com/documentation/swiftui/wkinterfaceobjectrepresentable/makewkinterfaceobject(context:)
timestamp: 2025-10-29T00:11:28.677Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [wkinterfaceobjectrepresentable](/documentation/swiftui/wkinterfaceobjectrepresentable)

**Instance Method**

# makeWKInterfaceObject(context:)

**Available on:** watchOS 6.0+

> Creates a WatchKit interface object and configures its initial state.

```swift
@MainActor @preconcurrency func makeWKInterfaceObject(context: Self.Context) -> Self.WKInterfaceObjectType
```

## Parameters

**context**

A context structure containing information about the current state of the system.



## Return Value

Your interface object configured with the provided information.

## Discussion

You must implement this method and use it to create your interface object. Configure the object using your app’s current data and contents of the `context` parameter. The system calls this method only once, when it creates your interface object for the first time. For all subsequent updates, the system calls the [updateWKInterfaceObject(_:context:)](/documentation/swiftui/wkinterfaceobjectrepresentable/updatewkinterfaceobject(_:context:)) method.

## Creating and updating the interface object

- [updateWKInterfaceObject(_:context:)](/documentation/swiftui/wkinterfaceobjectrepresentable/updatewkinterfaceobject(_:context:))
- [WKInterfaceObjectRepresentable.Context](/documentation/swiftui/wkinterfaceobjectrepresentable/context)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
