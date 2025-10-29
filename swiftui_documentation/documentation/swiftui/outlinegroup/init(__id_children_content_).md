---
title: init(_:id:children:content:)
description: Creates an outline group from a binding to a collection of root data elements, the key path to a data element’s identifier, and a key path to its children.
source: https://developer.apple.com/documentation/swiftui/outlinegroup/init(_:id:children:content:)
timestamp: 2025-10-29T00:15:25.437Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [outlinegroup](/documentation/swiftui/outlinegroup)

**Initializer**

# init(_:id:children:content:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, visionOS 1.0+

> Creates an outline group from a binding to a collection of root data elements, the key path to a data element’s identifier, and a key path to its children.

```swift
init<C, E>(_ data: Binding<C>, id: KeyPath<E, ID>, children: WritableKeyPath<E, C?>, @ViewBuilder content: @escaping (Binding<E>) -> Leaf) where Data == Binding<C>, C : MutableCollection, C : RandomAccessCollection, E == C.Element
```

## Parameters

**data**

A collection of tree-structured, identified data.



**id**

The key path to a data element’s identifier.



**children**

A key path to a property whose non-`nil` value gives the children of `data`. A non-`nil` but empty value denotes an element capable of having children that’s currently childless, such as an empty directory in a file system. On the other hand, if the property at the key path is `nil`, then the outline group treats `data` as a leaf in the tree, like a regular file in a file system.



**content**

A view builder that produces a content view based on an element in `data`.



## Discussion

This initializer creates an instance that uniquely identifies views across updates based on the identity of the underlying data element.

All generated disclosure groups begin in the collapsed state.

Make sure that the identifier of a data element only changes if you mean to replace that element with a new element, one with a new identity. If the ID of an element changes, then the content view generated from that element will lose any current state and animations.

## Creating an outline group

- [init(_:children:)](/documentation/swiftui/outlinegroup/init(_:children:))
- [init(_:children:content:)](/documentation/swiftui/outlinegroup/init(_:children:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
