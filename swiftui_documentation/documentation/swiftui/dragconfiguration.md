---
title: DragConfiguration
description: The behavior of the drag, proposed by the dragging source.
source: https://developer.apple.com/documentation/swiftui/dragconfiguration
timestamp: 2025-10-29T00:14:17.804Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# DragConfiguration

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, visionOS 26.0+

> The behavior of the drag, proposed by the dragging source.

```swift
struct DragConfiguration
```

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [CustomDebugStringConvertible](/documentation/Swift/CustomDebugStringConvertible)

## Structures

- [DragConfiguration.OperationsOutsideApp](/documentation/swiftui/dragconfiguration/operationsoutsideapp-swift.struct) Describes the suggested drag operations to other applications.
- [DragConfiguration.OperationsWithinApp](/documentation/swiftui/dragconfiguration/operationswithinapp-swift.struct) Describes the drag operations suggested to destinations within the app.

## Initializers

- [init(allowMove:)](/documentation/swiftui/dragconfiguration/init(allowmove:)) Creates a drag configuration that can support drag-to-move in addition to drag-to-copy.
- [init(allowMove:allowDelete:)](/documentation/swiftui/dragconfiguration/init(allowmove:allowdelete:)) Creates a drag configuration that can support drag-to-move and drag-to-delete in addition to drag-to-copy.
- [init(operationsWithinApp:operationsOutsideApp:)](/documentation/swiftui/dragconfiguration/init(operationswithinapp:operationsoutsideapp:)) Creates a default drag configuration with operation  support for drags within the application and to other applications.

## Instance Properties

- [operationsOutsideApp](/documentation/swiftui/dragconfiguration/operationsoutsideapp-swift.property) The operations suggested by the drag source for drags to other applications.
- [operationsWithinApp](/documentation/swiftui/dragconfiguration/operationswithinapp-swift.property) The operations suggested by the drag source for drags within the application.

## Configuring drag and drop behavior

- [DropConfiguration](/documentation/swiftui/dropconfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
