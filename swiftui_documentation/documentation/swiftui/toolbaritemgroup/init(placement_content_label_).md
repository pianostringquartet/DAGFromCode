---
title: init(placement:content:label:)
description: Creates a toolbar item group with the specified placement, content, and a label describing that content.
source: https://developer.apple.com/documentation/swiftui/toolbaritemgroup/init(placement:content:label:)
timestamp: 2025-10-29T00:13:52.618Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [toolbaritemgroup](/documentation/swiftui/toolbaritemgroup)

**Initializer**

# init(placement:content:label:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a toolbar item group with the specified placement, content, and a label describing that content.

```swift
nonisolated init<C, L>(placement: ToolbarItemPlacement = .automatic, @ViewBuilder content: () -> C, @ViewBuilder label: () -> L) where Content == LabeledToolbarItemGroupContent<C, L>, C : View, L : View
```

## Parameters

**placement**

Which section of the toolbar the item should be placed in.



**content**

The content of the item.



**label**

The label describing the content of the item.



## Discussion

A toolbar item group provided a label wraps its content within a [Control Group](/documentation/swiftui/controlgroup) which allows the content to collapse down into a menu that presents its content based on available space.

## Creating a toolbar item group

- [init(placement:content:)](/documentation/swiftui/toolbaritemgroup/init(placement:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
