---
title: DragSession
description: Describes the ongoing dragging session.
source: https://developer.apple.com/documentation/swiftui/dragsession
timestamp: 2025-10-29T00:14:30.824Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# DragSession

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, visionOS 26.0+

> Describes the ongoing dragging session.

```swift
struct DragSession
```

## Conforms To

- [Identifiable](/documentation/Swift/Identifiable)

## Structures

- [DragSession.ID](/documentation/swiftui/dragsession/id-swift.struct) The identifier of a drag session.

## Instance Properties

- [draggedItemIndex](/documentation/swiftui/dragsession/draggeditemindex) The index of the dragged item under the cursor.
- [id](/documentation/swiftui/dragsession/id-swift.property) The identifier of the drag session.
- [location](/documentation/swiftui/dragsession/location) Location of the drag session in the local coordinate space.
- [phase](/documentation/swiftui/dragsession/phase-swift.property) The current phase of the drag session.

## Instance Methods

- [draggedItemIDs(for:)](/documentation/swiftui/dragsession/draggeditemids(for:)) Provides an array of identifiers of the currently dragged items in a case when the items conform to the  protocol, or identifiers were provided to SwiftUI separately.

## Enumerations

- [DragSession.Phase](/documentation/swiftui/dragsession/phase-swift.enum) The phase of the current drag session

## Moving items

- [DropSession](/documentation/swiftui/dropsession)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
