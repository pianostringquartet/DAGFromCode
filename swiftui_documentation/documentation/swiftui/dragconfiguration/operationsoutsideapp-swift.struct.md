---
title: DragConfiguration.OperationsOutsideApp
description: Describes the suggested drag operations to other applications.
source: https://developer.apple.com/documentation/swiftui/dragconfiguration/operationsoutsideapp-swift.struct
timestamp: 2025-10-29T00:12:07.989Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [dragconfiguration](/documentation/swiftui/dragconfiguration)

**Structure**

# DragConfiguration.OperationsOutsideApp

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, visionOS 26.0+

> Describes the suggested drag operations to other applications.

```swift
struct OperationsOutsideApp
```

## Overview

To create a default configuration, initialize it without parameters.

On iOS, the default behavior is to disallow drag outside the application. On macOS—support drag-to-copy to destinations both within the application and to other apps.

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
           let operations = OperationsOutsideApp(
               allowCopy: true, allowMove: true
           )
           return DragConfiguration(operationsOutsideApp: operations)
       }
   }
```

In the example above, an application provides operations that will be suggested to other applications. Drags to destinations within the app will use the default behavior: suggest operation `copy` to drag destinations.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Initializers

- [init(allowCopy:)](/documentation/swiftui/dragconfiguration/operationsoutsideapp-swift.struct/init(allowcopy:)) Creates a value that describes the operations allowed for drags to other applications.
- [init(allowCopy:allowMove:allowDelete:)](/documentation/swiftui/dragconfiguration/operationsoutsideapp-swift.struct/init(allowcopy:allowmove:allowdelete:)) Creates a value that describes the operations allowed for drags to other applications.

## Instance Properties

- [allowAlias](/documentation/swiftui/dragconfiguration/operationsoutsideapp-swift.struct/allowalias) A Boolean value indicating if the drag operation supports creating aliases to the dropped items.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
