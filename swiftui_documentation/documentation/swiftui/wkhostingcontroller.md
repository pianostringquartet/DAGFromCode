---
title: WKHostingController
description: A WatchKit interface controller that hosts a SwiftUI view hierarchy.
source: https://developer.apple.com/documentation/swiftui/wkhostingcontroller
timestamp: 2025-10-29T00:14:29.018Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Class**

# WKHostingController

**Available on:** watchOS 6.0+

> A WatchKit interface controller that hosts a SwiftUI view hierarchy.

```swift
@MainActor @preconcurrency class WKHostingController<Body> where Body : View
```

## Overview

A [WKHosting Controller](/documentation/swiftui/wkhostingcontroller) presents and manages your app’s main interface using SwiftUI views. You must subclass [WKHosting Controller](/documentation/swiftui/wkhostingcontroller) and override the [body](/documentation/swiftui/wkhostingcontroller/body) property to provide the set of SwiftUI views you want to display. Display the content of your hosting controller as you would any other [WKInterface Controller](/documentation/WatchKit/WKInterfaceController) object. For example, you can include it as one of your app’s root interface controllers, or present it modally.

## Inherits From

- [WKInterfaceController](/documentation/WatchKit/WKInterfaceController)

## Conforms To

- [CVarArg](/documentation/Swift/CVarArg)
- [CustomDebugStringConvertible](/documentation/Swift/CustomDebugStringConvertible)
- [CustomStringConvertible](/documentation/Swift/CustomStringConvertible)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [NSObjectProtocol](/documentation/ObjectiveC/NSObjectProtocol)

## Creating a hosting controller object

- [init()](/documentation/swiftui/wkhostingcontroller/init()) Creates a hosting controller object that you can use to implement your app’s main interface using SwiftUI views

## Getting the root view

- [body](/documentation/swiftui/wkhostingcontroller/body) The root view of the view hierarchy to display for your interface controller.

## Updating the root view

- [updateBodyIfNeeded()](/documentation/swiftui/wkhostingcontroller/updatebodyifneeded()) Updates the interface controller’s set of views immediately, if updates are pending.
- [setNeedsBodyUpdate()](/documentation/swiftui/wkhostingcontroller/setneedsbodyupdate()) Invalidates the current SwiftUI views and triggers an update during the next cycle.

## Displaying SwiftUI views in WatchKit

- [WKUserNotificationHostingController](/documentation/swiftui/wkusernotificationhostingcontroller)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
