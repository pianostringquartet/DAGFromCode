---
title: UIViewRepresentableContext
description: Contextual information about the state of the system that you use to create and update your UIKit view.
source: https://developer.apple.com/documentation/swiftui/uiviewrepresentablecontext
timestamp: 2025-10-29T00:14:40.605Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# UIViewRepresentableContext

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, tvOS 13.0+, visionOS 1.0+

> Contextual information about the state of the system that you use to create and update your UIKit view.

```swift
@MainActor @preconcurrency struct UIViewRepresentableContext<Representable> where Representable : UIViewRepresentable
```

## Overview

A [UIView Representable Context](/documentation/swiftui/uiviewrepresentablecontext) structure contains details about the current state of the system. When creating and updating your view, the system creates one of these structures and passes it to the appropriate method of your custom [UIView Representable](/documentation/swiftui/uiviewrepresentable) instance. Use the information in this structure to configure your view. For example, use the provided environment values to configure the appearance of your view. Don’t create this structure yourself.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Coordinating view-related interactions

- [coordinator](/documentation/swiftui/uiviewrepresentablecontext/coordinator) The view’s associated coordinator.
- [transaction](/documentation/swiftui/uiviewrepresentablecontext/transaction) The current transaction.

## Getting the current environment data

- [environment](/documentation/swiftui/uiviewrepresentablecontext/environment) The current environment.

## Instance Methods

- [animate(changes:completion:)](/documentation/swiftui/uiviewrepresentablecontext/animate(changes:completion:)) Animates changes using the animation in the current transaction.

## Adding UIKit views to SwiftUI view hierarchies

- [UIViewRepresentable](/documentation/swiftui/uiviewrepresentable)
- [UIViewControllerRepresentable](/documentation/swiftui/uiviewcontrollerrepresentable)
- [UIViewControllerRepresentableContext](/documentation/swiftui/uiviewcontrollerrepresentablecontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
