---
title: NSViewControllerRepresentable
description: A wrapper that you use to integrate an AppKit view controller into your SwiftUI interface.
source: https://developer.apple.com/documentation/swiftui/nsviewcontrollerrepresentable
timestamp: 2025-10-29T00:10:57.771Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# NSViewControllerRepresentable

**Available on:** macOS 10.15+

> A wrapper that you use to integrate an AppKit view controller into your SwiftUI interface.

```swift
@MainActor @preconcurrency protocol NSViewControllerRepresentable : View where Self.Body == Never
```

## Overview

Use an [NSView Controller Representable](/documentation/swiftui/nsviewcontrollerrepresentable) instance to create and manage an [NSView Controller](/documentation/AppKit/NSViewController) object in your SwiftUI interface. Adopt this protocol in one of your app’s custom instances, and use its methods to create, update, and tear down your view controller. The creation and update processes parallel the behavior of SwiftUI views, and you use them to configure your view controller with your app’s current state information. Use the teardown process to remove your view controller cleanly from your SwiftUI. For example, you might use the teardown process to notify other objects that the view controller is disappearing.

To add your view controller into your SwiftUI interface, create your `NSViewControllerRepresentable` instance and add it to your SwiftUI interface. The system calls the methods of your custom instance at appropriate times.

The system doesn’t automatically communicate changes occurring within your view controller to other parts of your SwiftUI interface. When you want your view controller to coordinate with other SwiftUI views, you must provide a [Coordinator](/documentation/swiftui/nsviewcontrollerrepresentable/coordinator) instance to facilitate those interactions. For example, you use a coordinator to forward target-action and delegate messages from your view controller to any SwiftUI views.

> [!WARNING]
> SwiftUI fully controls the layout of the AppKit view controller’s view using the view’s [frame](/documentation/AppKit/NSView/frame) and [bounds](/documentation/AppKit/NSView/bounds) properties. Don’t directly set these layout-related properties on the view managed by an `NSViewControllerRepresentable` instance from your own code because that conflicts with SwiftUI and results in undefined behavior.

## Inherits From

- [View](/documentation/swiftui/view)

## Creating and updating the view controller

- [makeNSViewController(context:)](/documentation/swiftui/nsviewcontrollerrepresentable/makensviewcontroller(context:)) Creates the view controller object and configures its initial state.
- [updateNSViewController(_:context:)](/documentation/swiftui/nsviewcontrollerrepresentable/updatensviewcontroller(_:context:)) Updates the state of the specified view controller with new information from SwiftUI.
- [NSViewControllerRepresentable.Context](/documentation/swiftui/nsviewcontrollerrepresentable/context)
- [NSViewControllerType](/documentation/swiftui/nsviewcontrollerrepresentable/nsviewcontrollertype) The type of view controller to present.

## Specifying a size

- [sizeThatFits(_:nsViewController:context:)](/documentation/swiftui/nsviewcontrollerrepresentable/sizethatfits(_:nsviewcontroller:context:)) Given a proposed size, returns the preferred size of the composite view.

## Cleaning up the view controller

- [dismantleNSViewController(_:coordinator:)](/documentation/swiftui/nsviewcontrollerrepresentable/dismantlensviewcontroller(_:coordinator:)) Cleans up the presented view controller (and coordinator) in anticipation of its removal.

## Providing a custom coordinator object

- [makeCoordinator()](/documentation/swiftui/nsviewcontrollerrepresentable/makecoordinator()) Creates the custom object that you use to communicate changes from your view controller to other parts of your SwiftUI interface.
- [Coordinator](/documentation/swiftui/nsviewcontrollerrepresentable/coordinator) A type to coordinate with the view controller.

## Performing layout

- [NSViewControllerRepresentable.LayoutOptions](/documentation/swiftui/nsviewcontrollerrepresentable/layoutoptions)

## Adding AppKit views to SwiftUI view hierarchies

- [NSViewRepresentable](/documentation/swiftui/nsviewrepresentable)
- [NSViewRepresentableContext](/documentation/swiftui/nsviewrepresentablecontext)
- [NSViewControllerRepresentableContext](/documentation/swiftui/nsviewcontrollerrepresentablecontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
