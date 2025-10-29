---
title: WKInterfaceObjectRepresentable
description: A view that represents a WatchKit interface object.
source: https://developer.apple.com/documentation/swiftui/wkinterfaceobjectrepresentable
timestamp: 2025-10-29T00:13:36.193Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# WKInterfaceObjectRepresentable

**Available on:** watchOS 6.0+

> A view that represents a WatchKit interface object.

```swift
@MainActor @preconcurrency protocol WKInterfaceObjectRepresentable : View where Self.Body == Never
```

## Overview

Use a `WKInterfaceObjectRepresentable` instance to create and manage a [WKInterface Object](/documentation/WatchKit/WKInterfaceObject) in your SwiftUI interface. Adopt this protocol in one of your app’s custom instances, and use its methods to create, update, and tear down your interface object. The creation and update processes parallel the behavior of SwiftUI views, and you use them to configure your interface object with your app’s current state information. Use the teardown process to remove your interface object cleanly from your SwiftUI. For example, you might use the teardown process to notify other parts of your app that the interface object is disappearing.

To add your interface object into your SwiftUI interface, create your `WKInterfaceObjectRepresentable` instance and add it to your SwiftUI interface. The system calls the methods of your representable instance at appropriate times to create and update the interface object.

The system doesn’t automatically communicate changes occurring within your interface object to other parts of your SwiftUI interface. When you want your interface object to coordinate with other SwiftUI views, you must provide a [Coordinator](/documentation/swiftui/wkinterfaceobjectrepresentable/coordinator) instance to facilitate those interactions. For example, you use a coordinator to forward target-action and delegate messages from your interface object to any SwiftUI views.

## Inherits From

- [View](/documentation/swiftui/view)

## Creating and updating the interface object

- [makeWKInterfaceObject(context:)](/documentation/swiftui/wkinterfaceobjectrepresentable/makewkinterfaceobject(context:)) Creates a WatchKit interface object and configures its initial state.
- [updateWKInterfaceObject(_:context:)](/documentation/swiftui/wkinterfaceobjectrepresentable/updatewkinterfaceobject(_:context:)) Updates the presented WatchKit interface object (and its coordinator) to the latest configuration.
- [WKInterfaceObjectRepresentable.Context](/documentation/swiftui/wkinterfaceobjectrepresentable/context)

## Cleaning up the interface object

- [dismantleWKInterfaceObject(_:coordinator:)](/documentation/swiftui/wkinterfaceobjectrepresentable/dismantlewkinterfaceobject(_:coordinator:)) Cleans up the presented WatchKit interface object (and its coordinator) in anticipation of their removal.

## Providing a custom coordinator object

- [makeCoordinator()](/documentation/swiftui/wkinterfaceobjectrepresentable/makecoordinator()) Creates the custom instance that you use to communicate changes from your interface object to other parts of your SwiftUI interface.
- [Coordinator](/documentation/swiftui/wkinterfaceobjectrepresentable/coordinator) A type to coordinate with the WatchKit interface object.
- [WKInterfaceObjectType](/documentation/swiftui/wkinterfaceobjectrepresentable/wkinterfaceobjecttype) The type of WatchKit interface object to be presented.

## Adding WatchKit views to SwiftUI view hierarchies

- [WKInterfaceObjectRepresentableContext](/documentation/swiftui/wkinterfaceobjectrepresentablecontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
