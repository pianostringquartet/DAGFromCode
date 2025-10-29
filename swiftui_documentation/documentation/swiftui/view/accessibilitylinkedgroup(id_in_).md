---
title: accessibilityLinkedGroup(id:in:)
description: Links multiple accessibility elements so that the user can quickly navigate from one element to another, even when the elements are not near each other in the accessibility hierarchy.
source: https://developer.apple.com/documentation/swiftui/view/accessibilitylinkedgroup(id:in:)
timestamp: 2025-10-29T00:14:33.928Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# accessibilityLinkedGroup(id:in:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Links multiple accessibility elements so that the user can quickly navigate from one element to another, even when the elements are not near each other in the accessibility hierarchy.

```swift
nonisolated func accessibilityLinkedGroup<ID>(id: ID, in namespace: Namespace.ID) -> some View where ID : Hashable
```

## Parameters

**id**

A hashable identifier used to separate sets of linked elements within the same namespace. Elements with matching `namespace` and `id` will be linked together.



**namespace**

The namespace to use to organize linked accessibility elements. All elements marked with `accessibilityLink` in this namespace and with the specified `id` will be linked together.



## Discussion

This can be useful to allow quickly jumping between content in a list and the same content shown in a detail view, for example. All elements marked with `accessibilityLinkedGroup` with the same namespace and identifier will be linked together.

## Configuring rotors

- [accessibilityRotorEntry(id:in:)](/documentation/swiftui/view/accessibilityrotorentry(id:in:))
- [accessibilitySortPriority(_:)](/documentation/swiftui/view/accessibilitysortpriority(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
