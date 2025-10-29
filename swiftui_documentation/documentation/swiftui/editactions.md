---
title: EditActions
description: A set of edit actions on a collection of data that a view can offer to a user.
source: https://developer.apple.com/documentation/swiftui/editactions
timestamp: 2025-10-29T00:09:17.546Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# EditActions

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A set of edit actions on a collection of data that a view can offer to a user.

```swift
struct EditActions<Data>
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [ExpressibleByArrayLiteral](/documentation/Swift/ExpressibleByArrayLiteral)
- [OptionSet](/documentation/Swift/OptionSet)
- [RawRepresentable](/documentation/Swift/RawRepresentable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [SetAlgebra](/documentation/Swift/SetAlgebra)

## Getting edit operations

- [all](/documentation/swiftui/editactions/all-45m4m) All the edit actions available on this collection.
- [all](/documentation/swiftui/editactions/all-4dctm) All the edit actions available on this collection.
- [all](/documentation/swiftui/editactions/all-4uyun) All the edit actions available on this collection.
- [all](/documentation/swiftui/editactions/all-6ryvk) All the edit actions available on this collection.
- [delete](/documentation/swiftui/editactions/delete) An edit action that allows the user to delete one or more elements of a collection.
- [move](/documentation/swiftui/editactions/move) An edit action that allows the user to move elements of a collection.

## Creating an edit operation

- [init(rawValue:)](/documentation/swiftui/editactions/init(rawvalue:)) Creates a new set from a raw value.
- [rawValue](/documentation/swiftui/editactions/rawvalue) The raw value.

## Editing a list

- [moveDisabled(_:)](/documentation/swiftui/view/movedisabled(_:))
- [deleteDisabled(_:)](/documentation/swiftui/view/deletedisabled(_:))
- [editMode](/documentation/swiftui/environmentvalues/editmode)
- [EditMode](/documentation/swiftui/editmode)
- [EditableCollectionContent](/documentation/swiftui/editablecollectioncontent)
- [IndexedIdentifierCollection](/documentation/swiftui/indexedidentifiercollection)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
