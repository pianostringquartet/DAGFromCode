---
title: WKInterfaceObjectRepresentableContext
description: Contextual information about the state of the system that you use to create and update your WatchKit interface object.
source: https://developer.apple.com/documentation/swiftui/wkinterfaceobjectrepresentablecontext
timestamp: 2025-10-29T00:12:10.107Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# WKInterfaceObjectRepresentableContext

**Available on:** watchOS 6.0+

> Contextual information about the state of the system that you use to create and update your WatchKit interface object.

```swift
@MainActor @preconcurrency struct WKInterfaceObjectRepresentableContext<Representable> where Representable : WKInterfaceObjectRepresentable
```

## Overview

A [WKInterface Object Representable Context](/documentation/swiftui/wkinterfaceobjectrepresentablecontext) structure contains details about the current state of the system. When creating and updating your interface objects, the system creates one of these structures and passes it to the appropriate method of your custom [WKInterface Object Representable](/documentation/swiftui/wkinterfaceobjectrepresentable) instance. Use the information in this structure to configure your object. Don’t create this structure yourself.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Coordinating interactions

- [coordinator](/documentation/swiftui/wkinterfaceobjectrepresentablecontext/coordinator) The view’s associated coordinator.
- [transaction](/documentation/swiftui/wkinterfaceobjectrepresentablecontext/transaction) The current transaction.

## Getting the current environment data

- [environment](/documentation/swiftui/wkinterfaceobjectrepresentablecontext/environment) The current environment.

## Adding WatchKit views to SwiftUI view hierarchies

- [WKInterfaceObjectRepresentable](/documentation/swiftui/wkinterfaceobjectrepresentable)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
