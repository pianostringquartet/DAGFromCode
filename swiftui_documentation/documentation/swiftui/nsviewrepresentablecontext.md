---
title: NSViewRepresentableContext
description: Contextual information about the state of the system that you use to create and update your AppKit view.
source: https://developer.apple.com/documentation/swiftui/nsviewrepresentablecontext
timestamp: 2025-10-29T00:12:27.927Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# NSViewRepresentableContext

**Available on:** macOS 10.15+

> Contextual information about the state of the system that you use to create and update your AppKit view.

```swift
@MainActor @preconcurrency struct NSViewRepresentableContext<View> where View : NSViewRepresentable
```

## Overview

An [NSView Representable Context](/documentation/swiftui/nsviewrepresentablecontext) structure contains details about the current state of the system. When creating and updating your view, the system creates one of these structures and passes it to the appropriate method of your custom [NSView Representable](/documentation/swiftui/nsviewrepresentable) instance. Use the information in this structure to configure your view. For example, use the provided environment values to configure the appearance of your view. Don’t create this structure yourself.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Coordinating view-related interactions

- [coordinator](/documentation/swiftui/nsviewrepresentablecontext/coordinator) An instance you use to communicate your AppKit view’s behavior and state out to SwiftUI objects.
- [transaction](/documentation/swiftui/nsviewrepresentablecontext/transaction) The current transaction.

## Getting the current environment data

- [environment](/documentation/swiftui/nsviewrepresentablecontext/environment) Environment data that describes the current state of the system.

## Instance Methods

- [animate(changes:completion:)](/documentation/swiftui/nsviewrepresentablecontext/animate(changes:completion:)) Animates changes using the animation in the current transaction.

## Adding AppKit views to SwiftUI view hierarchies

- [NSViewRepresentable](/documentation/swiftui/nsviewrepresentable)
- [NSViewControllerRepresentable](/documentation/swiftui/nsviewcontrollerrepresentable)
- [NSViewControllerRepresentableContext](/documentation/swiftui/nsviewcontrollerrepresentablecontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
