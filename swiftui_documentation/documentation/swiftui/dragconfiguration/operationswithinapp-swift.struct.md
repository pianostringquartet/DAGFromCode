---
title: DragConfiguration.OperationsWithinApp
description: Describes the drag operations suggested to destinations within the app.
source: https://developer.apple.com/documentation/swiftui/dragconfiguration/operationswithinapp-swift.struct
timestamp: 2025-10-29T00:13:36.441Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [dragconfiguration](/documentation/swiftui/dragconfiguration)

**Structure**

# DragConfiguration.OperationsWithinApp

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, visionOS 26.0+

> Describes the drag operations suggested to destinations within the app.

```swift
struct OperationsWithinApp
```

## Overview

To create a default configuration, initialize it without parameters.

On iOS, the default behavior is to allow drag-to-copy within the application. On macOS, the default configuration is to support drag-to-copy to destinations both within the application and to other apps.

In addition to `copy`, add `move` operation support by specifying that in the initializer:

```swift
   struct DraggableBookView: View {
       var id: UUID

       var body: some View {
           BookView()
               .draggable(Book(id: id))
               .dragConfiguration(makeConfiguration())
       }

       func makeConfiguration() -> DragConfiguration {
           let operations = OperationsWithinApp(allowMove: true)
           return DragConfiguration(operationsWithinApp: operations)
       }
   }
```

In the example above, an application provides operations that will be suggested to destinations within the app. Drags to other apps will use the default behavior: suggest operation `copy` to drag destinations on macOS, and forbid drags on iOS.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Initializers

- [init(allowCopy:allowMove:allowDelete:)](/documentation/swiftui/dragconfiguration/operationswithinapp-swift.struct/init(allowcopy:allowmove:allowdelete:)) Creates a value that describes the operations allowed for drags that end within the application.
- [init(allowMove:)](/documentation/swiftui/dragconfiguration/operationswithinapp-swift.struct/init(allowmove:)) Creates a value that describes the operations allowed for drags that end within the application. Copy operation is always allowed.

## Instance Properties

- [allowAlias](/documentation/swiftui/dragconfiguration/operationswithinapp-swift.struct/allowalias) A Boolean value indicating if the drag operation supports creating aliases to the dropped items.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
