---
title: UIViewControllerRepresentableContext
description: Contextual information about the state of the system that you use to create and update your UIKit view controller.
source: https://developer.apple.com/documentation/swiftui/uiviewcontrollerrepresentablecontext
timestamp: 2025-10-29T00:10:33.263Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# UIViewControllerRepresentableContext

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, tvOS 13.0+, visionOS 1.0+

> Contextual information about the state of the system that you use to create and update your UIKit view controller.

```swift
@MainActor @preconcurrency struct UIViewControllerRepresentableContext<Representable> where Representable : UIViewControllerRepresentable
```

## Overview

A [UIView Controller Representable Context](/documentation/swiftui/uiviewcontrollerrepresentablecontext) structure contains details about the current state of the system. When creating and updating your view controller, the system creates one of these structures and passes it to the appropriate method of your custom [UIView Controller Representable](/documentation/swiftui/uiviewcontrollerrepresentable) instance. Use the information in this structure to configure your view controller. For example, use the provided environment values to configure the appearance of your view controller and views. Don’t create this structure yourself.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Coordinating view controller interactions

- [coordinator](/documentation/swiftui/uiviewcontrollerrepresentablecontext/coordinator) The view’s associated coordinator.
- [transaction](/documentation/swiftui/uiviewcontrollerrepresentablecontext/transaction) The current transaction.

## Getting the environment data

- [environment](/documentation/swiftui/uiviewcontrollerrepresentablecontext/environment) Environment values that describe the current state of the system.

## Instance Methods

- [animate(changes:completion:)](/documentation/swiftui/uiviewcontrollerrepresentablecontext/animate(changes:completion:)) Animates changes using the animation in the current transaction.

## Adding UIKit views to SwiftUI view hierarchies

- [UIViewRepresentable](/documentation/swiftui/uiviewrepresentable)
- [UIViewRepresentableContext](/documentation/swiftui/uiviewrepresentablecontext)
- [UIViewControllerRepresentable](/documentation/swiftui/uiviewcontrollerrepresentable)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
