---
title: UIViewRepresentable
description: A wrapper for a UIKit view that you use to integrate that view into your SwiftUI view hierarchy.
source: https://developer.apple.com/documentation/swiftui/uiviewrepresentable
timestamp: 2025-10-29T00:11:16.884Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# UIViewRepresentable

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, tvOS 13.0+, visionOS 1.0+

> A wrapper for a UIKit view that you use to integrate that view into your SwiftUI view hierarchy.

```swift
@MainActor @preconcurrency protocol UIViewRepresentable : View where Self.Body == Never
```

## Overview

Use a [UIView Representable](/documentation/swiftui/uiviewrepresentable) instance to create and manage a [UIView](/documentation/UIKit/UIView) object in your SwiftUI interface. Adopt this protocol in one of your app’s custom instances, and use its methods to create, update, and tear down your view. The creation and update processes parallel the behavior of SwiftUI views, and you use them to configure your view with your app’s current state information. Use the teardown process to remove your view cleanly from your SwiftUI. For example, you might use the teardown process to notify other objects that the view is disappearing.

To add your view into your SwiftUI interface, create your [UIView Representable](/documentation/swiftui/uiviewrepresentable) instance and add it to your SwiftUI interface. The system calls the methods of your representable instance at appropriate times to create and update the view. The following example shows the inclusion of a custom `MyRepresentedCustomView` structure in the view hierarchy.

```swift
struct ContentView: View {
   var body: some View {
      VStack {
         Text("Global Sales")
         MyRepresentedCustomView()
      }
   }
}
```

The system doesn’t automatically communicate changes occurring within your view to other parts of your SwiftUI interface. When you want your view to coordinate with other SwiftUI views, you must provide a [Coordinator](/documentation/swiftui/nsviewcontrollerrepresentable/coordinator) instance to facilitate those interactions. For example, you use a coordinator to forward target-action and delegate messages from your view to any SwiftUI views.

> [!WARNING]
> SwiftUI fully controls the layout of the UIKit view’s [center](/documentation/UIKit/UIView/center), [bounds](/documentation/UIKit/UIView/bounds), [frame](/documentation/UIKit/UIView/frame), and [transform](/documentation/UIKit/UIView/transform) properties. Don’t directly set these layout-related properties on the view managed by a `UIViewRepresentable` instance from your own code because that conflicts with SwiftUI and results in undefined behavior.

## Inherits From

- [View](/documentation/swiftui/view)

## Creating and updating the view

- [makeUIView(context:)](/documentation/swiftui/uiviewrepresentable/makeuiview(context:)) Creates the view object and configures its initial state.
- [updateUIView(_:context:)](/documentation/swiftui/uiviewrepresentable/updateuiview(_:context:)) Updates the state of the specified view with new information from SwiftUI.
- [UIViewRepresentable.Context](/documentation/swiftui/uiviewrepresentable/context)
- [UIViewType](/documentation/swiftui/uiviewrepresentable/uiviewtype) The type of view to present.

## Specifying a size

- [sizeThatFits(_:uiView:context:)](/documentation/swiftui/uiviewrepresentable/sizethatfits(_:uiview:context:)) Given a proposed size, returns the preferred size of the composite view.

## Cleaning up the view

- [dismantleUIView(_:coordinator:)](/documentation/swiftui/uiviewrepresentable/dismantleuiview(_:coordinator:)) Cleans up the presented UIKit view (and coordinator) in anticipation of their removal.

## Providing a custom coordinator object

- [makeCoordinator()](/documentation/swiftui/uiviewrepresentable/makecoordinator()) Creates the custom instance that you use to communicate changes from your view to other parts of your SwiftUI interface.
- [Coordinator](/documentation/swiftui/uiviewrepresentable/coordinator) A type to coordinate with the view.

## Performing layout

- [UIViewRepresentable.LayoutOptions](/documentation/swiftui/uiviewrepresentable/layoutoptions)

## Adding UIKit views to SwiftUI view hierarchies

- [UIViewRepresentableContext](/documentation/swiftui/uiviewrepresentablecontext)
- [UIViewControllerRepresentable](/documentation/swiftui/uiviewcontrollerrepresentable)
- [UIViewControllerRepresentableContext](/documentation/swiftui/uiviewcontrollerrepresentablecontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
