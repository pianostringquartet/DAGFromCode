---
title: init(_:children:)
description: Creates an outline group from a collection of root data elements and a key path to element’s children.
source: https://developer.apple.com/documentation/swiftui/outlinegroup/init(_:children:)
timestamp: 2025-10-29T00:10:25.700Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [outlinegroup](/documentation/swiftui/outlinegroup)

**Initializer**

# init(_:children:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> Creates an outline group from a collection of root data elements and a key path to element’s children.

```swift
init<DataElement>(_ data: Data, children: KeyPath<DataElement, Data?>) where ID == DataElement.ID, Parent == TableRow<DataElement>, Leaf == TableRow<DataElement>, Subgroup == TableRow<DataElement>, DataElement : Identifiable, DataElement == Data.Element
```

## Parameters

**data**

A collection of tree-structured, identified data.



**children**

A key path to a property whose non-`nil` value gives the children of `data`. A non-`nil` but empty value denotes an element capable of having children that’s currently childless, such as an empty directory in a file system. On the other hand, if the property at the key path is `nil`, then the outline group treats `data` as a leaf in the tree, like a regular file in a file system.



## Discussion

This initializer provides a default `TableRowBuilder` using `TableRow` for each data element.

This initializer creates an instance that uniquely identifies table rows across updates based on the identity of the underlying data element.

All generated disclosure groups begin in the collapsed state.

## Creating an outline group

- [init(_:children:content:)](/documentation/swiftui/outlinegroup/init(_:children:content:))
- [init(_:id:children:content:)](/documentation/swiftui/outlinegroup/init(_:id:children:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
