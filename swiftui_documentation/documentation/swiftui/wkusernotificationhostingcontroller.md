---
title: WKUserNotificationHostingController
description: A WatchKit user notification interface controller that hosts a SwiftUI view hierarchy.
source: https://developer.apple.com/documentation/swiftui/wkusernotificationhostingcontroller
timestamp: 2025-10-29T00:10:05.917Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Class**

# WKUserNotificationHostingController

**Available on:** watchOS 6.0+

> A WatchKit user notification interface controller that hosts a SwiftUI view hierarchy.

```swift
@MainActor @preconcurrency class WKUserNotificationHostingController<Body> where Body : View
```

## Overview

A [WKUser Notification Hosting Controller](/documentation/swiftui/wkusernotificationhostingcontroller) presents and manages your app’s notification interface using SwiftUI views. You must subclass [WKUser Notification Hosting Controller](/documentation/swiftui/wkusernotificationhostingcontroller) and override the [body](/documentation/swiftui/wkusernotificationhostingcontroller/body) property to provide the set of SwiftUI views you want to display. In the storyboard of your watch app, specify the name of your custom class for your dynamic interactive interface.

## Inherits From

- [WKUserNotificationInterfaceController](/documentation/WatchKit/WKUserNotificationInterfaceController)

## Conforms To

- [CVarArg](/documentation/Swift/CVarArg)
- [CustomDebugStringConvertible](/documentation/Swift/CustomDebugStringConvertible)
- [CustomStringConvertible](/documentation/Swift/CustomStringConvertible)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [NSObjectProtocol](/documentation/ObjectiveC/NSObjectProtocol)

## Creating a hosting controller object

- [init()](/documentation/swiftui/wkusernotificationhostingcontroller/init()) Creates a notification hosting controller object that you can use to implement your notification interfaces using SwiftUI views.

## Getting the root view

- [body](/documentation/swiftui/wkusernotificationhostingcontroller/body) The root view of the view hierarchy to display for your notification interface.

## Configuring the notification

- [coalescedDescriptionFormat](/documentation/swiftui/wkusernotificationhostingcontroller/coalesceddescriptionformat) The format string to display when multiple notifications of the same type arrive simultaneously. If you specify a custom string, you can use the %d variable to reflect the number of notifications. If  format will be the system default.
- [isInteractive](/documentation/swiftui/wkusernotificationhostingcontroller/isinteractive) If the notification should accept user input.
- [sashColor](/documentation/swiftui/wkusernotificationhostingcontroller/sashcolor) Color to use within the sash of the long look interface. If  the sash will be the default system color.
- [subtitleColor](/documentation/swiftui/wkusernotificationhostingcontroller/subtitlecolor) The color to apply to the subtitle text displayed in the short look interface. If  the text will be the default system color.
- [titleColor](/documentation/swiftui/wkusernotificationhostingcontroller/titlecolor) The color to apply to the text displayed in the sash. If  the text will be the default system color.
- [wantsSashBlur](/documentation/swiftui/wkusernotificationhostingcontroller/wantssashblur) If the sash should include a blur over the background.

## Displaying SwiftUI views in WatchKit

- [WKHostingController](/documentation/swiftui/wkhostingcontroller)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
