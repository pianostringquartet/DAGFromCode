---
title: UIViewControllerRepresentable
description: A view that represents a UIKit view controller.
source: https://developer.apple.com/documentation/swiftui/uiviewcontrollerrepresentable
timestamp: 2025-10-29T00:12:41.416Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# UIViewControllerRepresentable

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, tvOS 13.0+, visionOS 1.0+

> A view that represents a UIKit view controller.

```swift
@MainActor @preconcurrency protocol UIViewControllerRepresentable : View where Self.Body == Never
```

## Overview

Use a [UIView Controller Representable](/documentation/swiftui/uiviewcontrollerrepresentable) instance to create and manage a [UIView Controller](/documentation/UIKit/UIViewController) object in your SwiftUI interface. Adopt this protocol in one of your app’s custom instances, and use its methods to create, update, and tear down your view controller. The creation and update processes parallel the behavior of SwiftUI views, and you use them to configure your view controller with your app’s current state information. Use the teardown process to remove your view controller cleanly from your SwiftUI. For example, you might use the teardown process to notify other objects that the view controller is disappearing.

To add your view controller into your SwiftUI interface, create your [UIView Controller Representable](/documentation/swiftui/uiviewcontrollerrepresentable) instance and add it to your SwiftUI interface. The system calls the methods of your custom instance at appropriate times.

The system doesn’t automatically communicate changes occurring within your view controller to other parts of your SwiftUI interface. When you want your view controller to coordinate with other SwiftUI views, you must provide a [Coordinator](/documentation/swiftui/nsviewcontrollerrepresentable/coordinator) instance to facilitate those interactions. For example, you use a coordinator to forward target-action and delegate messages from your view controller to any SwiftUI views.

> [!WARNING]
> SwiftUI fully controls the layout of the UIKit view controller’s view using the view’s [center](/documentation/UIKit/UIView/center), [bounds](/documentation/UIKit/UIView/bounds), [frame](/documentation/UIKit/UIView/frame), and [transform](/documentation/UIKit/UIView/transform) properties. Don’t directly set these layout-related properties on the view managed by a `UIViewControllerRepresentable` instance from your own code because that conflicts with SwiftUI and results in undefined behavior.

## Inherits From

- [View](/documentation/swiftui/view)

## Creating and updating the view controller

- [makeUIViewController(context:)](/documentation/swiftui/uiviewcontrollerrepresentable/makeuiviewcontroller(context:)) Creates the view controller object and configures its initial state.
- [updateUIViewController(_:context:)](/documentation/swiftui/uiviewcontrollerrepresentable/updateuiviewcontroller(_:context:)) Updates the state of the specified view controller with new information from SwiftUI.
- [UIViewControllerRepresentable.Context](/documentation/swiftui/uiviewcontrollerrepresentable/context)
- [UIViewControllerType](/documentation/swiftui/uiviewcontrollerrepresentable/uiviewcontrollertype) The type of view controller to present.

## Specifying a size

- [sizeThatFits(_:uiViewController:context:)](/documentation/swiftui/uiviewcontrollerrepresentable/sizethatfits(_:uiviewcontroller:context:)) Given a proposed size, returns the preferred size of the composite view.

## Cleaning up the view controller

- [dismantleUIViewController(_:coordinator:)](/documentation/swiftui/uiviewcontrollerrepresentable/dismantleuiviewcontroller(_:coordinator:)) Cleans up the presented view controller (and coordinator) in anticipation of their removal.

## Providing a custom coordinator object

- [makeCoordinator()](/documentation/swiftui/uiviewcontrollerrepresentable/makecoordinator()) Creates the custom instance that you use to communicate changes from your view controller to other parts of your SwiftUI interface.
- [Coordinator](/documentation/swiftui/uiviewcontrollerrepresentable/coordinator) A type to coordinate with the view controller.

## Performing layout

- [UIViewControllerRepresentable.LayoutOptions](/documentation/swiftui/uiviewcontrollerrepresentable/layoutoptions)

## Adding UIKit views to SwiftUI view hierarchies

- [UIViewRepresentable](/documentation/swiftui/uiviewrepresentable)
- [UIViewRepresentableContext](/documentation/swiftui/uiviewrepresentablecontext)
- [UIViewControllerRepresentableContext](/documentation/swiftui/uiviewcontrollerrepresentablecontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
