---
title: NSViewRepresentable
description: A wrapper that you use to integrate an AppKit view into your SwiftUI view hierarchy.
source: https://developer.apple.com/documentation/swiftui/nsviewrepresentable
timestamp: 2025-10-29T00:14:28.729Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# NSViewRepresentable

**Available on:** macOS 10.15+

> A wrapper that you use to integrate an AppKit view into your SwiftUI view hierarchy.

```swift
@MainActor @preconcurrency protocol NSViewRepresentable : View where Self.Body == Never
```

## Overview

Use an `NSViewRepresentable` instance to create and manage an [NSView](/documentation/AppKit/NSView) object in your SwiftUI interface. Adopt this protocol in one of your app’s custom instances, and use its methods to create, update, and tear down your view. The creation and update processes parallel the behavior of SwiftUI views, and you use them to configure your view with your app’s current state information. Use the teardown process to remove your view cleanly from your SwiftUI. For example, you might use the teardown process to notify other objects that the view is disappearing.

To add your view into your SwiftUI interface, create your [NSView Representable](/documentation/swiftui/nsviewrepresentable) instance and add it to your SwiftUI interface. The system calls the methods of your representable instance at appropriate times to create and update the view. The following example shows the inclusion of a custom `MyRepresentedCustomView` struct in the view hierarchy.

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

The system doesn’t automatically communicate changes occurring within your view controller to other parts of your SwiftUI interface. When you want your view controller to coordinate with other SwiftUI views, you must provide a [Coordinator](/documentation/swiftui/nsviewcontrollerrepresentable/coordinator) object to facilitate those interactions. For example, you use a coordinator to forward target-action and delegate messages from your view controller to any SwiftUI views.

> [!WARNING]
> SwiftUI fully controls the layout of the AppKit view using the view’s [frame](/documentation/AppKit/NSView/frame) and [bounds](/documentation/AppKit/NSView/bounds) properties. Don’t directly set these layout-related properties on the view managed by an `NSViewRepresentable` instance from your own code because that conflicts with SwiftUI and results in undefined behavior.

## Inherits From

- [View](/documentation/swiftui/view)

## Creating and updating the view

- [makeNSView(context:)](/documentation/swiftui/nsviewrepresentable/makensview(context:)) Creates the view object and configures its initial state.
- [updateNSView(_:context:)](/documentation/swiftui/nsviewrepresentable/updatensview(_:context:)) Updates the state of the specified view with new information from SwiftUI.
- [NSViewRepresentable.Context](/documentation/swiftui/nsviewrepresentable/context)
- [NSViewType](/documentation/swiftui/nsviewrepresentable/nsviewtype) The type of view to present.

## Specifying a size

- [sizeThatFits(_:nsView:context:)](/documentation/swiftui/nsviewrepresentable/sizethatfits(_:nsview:context:)) Given a proposed size, returns the preferred size of the composite view.

## Cleaning up the view

- [dismantleNSView(_:coordinator:)](/documentation/swiftui/nsviewrepresentable/dismantlensview(_:coordinator:)) Cleans up the presented AppKit view (and coordinator) in anticipation of their removal.

## Providing a custom coordinator object

- [makeCoordinator()](/documentation/swiftui/nsviewrepresentable/makecoordinator()) Creates the custom instance that you use to communicate changes from your view to other parts of your SwiftUI interface.
- [Coordinator](/documentation/swiftui/nsviewrepresentable/coordinator) A type to coordinate with the view.

## Performing layout

- [NSViewRepresentable.LayoutOptions](/documentation/swiftui/nsviewrepresentable/layoutoptions)

## Adding AppKit views to SwiftUI view hierarchies

- [NSViewRepresentableContext](/documentation/swiftui/nsviewrepresentablecontext)
- [NSViewControllerRepresentable](/documentation/swiftui/nsviewcontrollerrepresentable)
- [NSViewControllerRepresentableContext](/documentation/swiftui/nsviewcontrollerrepresentablecontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
