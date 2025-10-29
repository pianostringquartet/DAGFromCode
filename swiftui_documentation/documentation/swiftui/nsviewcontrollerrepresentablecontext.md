---
title: NSViewControllerRepresentableContext
description: Contextual information about the state of the system that you use to create and update your AppKit view controller.
source: https://developer.apple.com/documentation/swiftui/nsviewcontrollerrepresentablecontext
timestamp: 2025-10-29T00:09:24.873Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# NSViewControllerRepresentableContext

**Available on:** macOS 10.15+

> Contextual information about the state of the system that you use to create and update your AppKit view controller.

```swift
@MainActor @preconcurrency struct NSViewControllerRepresentableContext<ViewController> where ViewController : NSViewControllerRepresentable
```

## Overview

An [NSView Controller Representable Context](/documentation/swiftui/nsviewcontrollerrepresentablecontext) structure contains details about the current state of the system. When creating and updating your view controller, the system creates one of these structures and passes it to the appropriate method of your custom [NSView Controller Representable](/documentation/swiftui/nsviewcontrollerrepresentable) instance. Use the information in this structure to configure your view controller. For example, use the provided environment values to configure the appearance of your view controller and views. Don’t create this structure yourself.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Coordinating view-related interactions

- [coordinator](/documentation/swiftui/nsviewcontrollerrepresentablecontext/coordinator) An object you use to communicate your AppKit view controller’s behavior and state out to SwiftUI objects.
- [transaction](/documentation/swiftui/nsviewcontrollerrepresentablecontext/transaction) The current transaction.

## Getting the current environment data

- [environment](/documentation/swiftui/nsviewcontrollerrepresentablecontext/environment) Environment data that describes the current state of the system.

## Instance Methods

- [animate(changes:completion:)](/documentation/swiftui/nsviewcontrollerrepresentablecontext/animate(changes:completion:)) Animates changes using the animation in the current transaction.

## Adding AppKit views to SwiftUI view hierarchies

- [NSViewRepresentable](/documentation/swiftui/nsviewrepresentable)
- [NSViewRepresentableContext](/documentation/swiftui/nsviewrepresentablecontext)
- [NSViewControllerRepresentable](/documentation/swiftui/nsviewcontrollerrepresentable)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
