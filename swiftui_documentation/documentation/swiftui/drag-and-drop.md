---
title: Drag and drop
description: Enable people to move or duplicate items by dragging them from one location to another.
source: https://developer.apple.com/documentation/swiftui/drag-and-drop
timestamp: 2025-10-29T00:11:23.302Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Drag and drop

> Enable people to move or duplicate items by dragging them from one location to another.

## Overview

Drag and drop offers people a convenient way to move content from one part of your app to another, or from one app to another, using an intuitive dragging gesture. Support this feature in your app by adding view modifiers to potential source and destination views within your app’s interface.



In your modifiers, provide or accept types that conform to the [Transferable](/documentation/CoreTransferable/Transferable) protocol, or that inherit from the [NSItem Provider](/documentation/Foundation/NSItemProvider) class. When possible, prefer using transferable items.

For design guidance, see [drag-and](/design/Human-Interface-Guidelines/drag-and-drop) in the Human Interface Guidelines.

## Essentials

- [Adopting drag and drop using SwiftUI](/documentation/swiftui/adopting-drag-and-drop-using-swiftui) Enable drag-and-drop interactions in lists, tables and custom views.
- [Making a view into a drag source](/documentation/swiftui/making-a-view-into-a-drag-source) Adopt draggable API to provide items for drag-and-drop operations.

## Configuring drag and drop behavior

- [DragConfiguration](/documentation/swiftui/dragconfiguration) The behavior of the drag, proposed by the dragging source.
- [DropConfiguration](/documentation/swiftui/dropconfiguration) Describes the behavior of the drop.

## Moving items

- [DragSession](/documentation/swiftui/dragsession) Describes the ongoing dragging session.
- [DropSession](/documentation/swiftui/dropsession)

## Moving transferable items

- [draggable(_:)](/documentation/swiftui/view/draggable(_:)) Activates this view as the source of a drag and drop operation.
- [draggable(_:preview:)](/documentation/swiftui/view/draggable(_:preview:)) Activates this view as the source of a drag and drop operation.
- [dropDestination(for:action:isTargeted:)](/documentation/swiftui/view/dropdestination(for:action:istargeted:)) Defines the destination of a drag and drop operation that handles the dropped content with a closure that you specify.

## Moving items using item providers

- [itemProvider(_:)](/documentation/swiftui/view/itemprovider(_:)) Provides a closure that vends the drag representation to be used for a particular data element.
- [onDrag(_:preview:)](/documentation/swiftui/view/ondrag(_:preview:)) Activates this view as the source of a drag and drop operation.
- [onDrag(_:)](/documentation/swiftui/view/ondrag(_:)) Activates this view as the source of a drag and drop operation.
- [onDrop(of:isTargeted:perform:)](/documentation/swiftui/view/ondrop(of:istargeted:perform:)) Defines the destination of a drag-and-drop operation that handles the dropped content with a closure that you specify.
- [onDrop(of:delegate:)](/documentation/swiftui/view/ondrop(of:delegate:)) Defines the destination of a drag and drop operation using behavior controlled by the delegate that you provide.
- [DropDelegate](/documentation/swiftui/dropdelegate) An interface that you implement to interact with a drop operation in a view modified to accept drops.
- [DropProposal](/documentation/swiftui/dropproposal) The behavior of a drop.
- [DropOperation](/documentation/swiftui/dropoperation) Operation types that determine how a drag and drop session resolves when the user drops a drag item.
- [DropInfo](/documentation/swiftui/dropinfo) The current state of a drop.

## Describing preview formations

- [DragDropPreviewsFormation](/documentation/swiftui/dragdroppreviewsformation) On macOS, describes the way the dragged previews are visually composed. Both drag sources and drop destination can specify their desired preview formation.

## Configuring spring loading

- [springLoadingBehavior(_:)](/documentation/swiftui/view/springloadingbehavior(_:)) Sets the spring loading behavior this view.
- [springLoadingBehavior](/documentation/swiftui/environmentvalues/springloadingbehavior) The behavior of spring loaded interactions for the views associated with this environment.
- [SpringLoadingBehavior](/documentation/swiftui/springloadingbehavior) The options for controlling the spring loading behavior of views.

## Event handling

- [Gestures](/documentation/swiftui/gestures)
- [Input events](/documentation/swiftui/input-events)
- [Clipboard](/documentation/swiftui/clipboard)
- [Focus](/documentation/swiftui/focus)
- [System events](/documentation/swiftui/system-events)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
