---
title: init(path:root:)
description: Creates a navigation stack with homogeneous navigation state that you can control.
source: https://developer.apple.com/documentation/swiftui/navigationstack/init(path:root:)
timestamp: 2025-10-29T00:12:06.250Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [navigationstack](/documentation/swiftui/navigationstack)

**Initializer**

# init(path:root:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a navigation stack with homogeneous navigation state that you can control.

```swift
@MainActor @preconcurrency init(path: Binding<Data>, @ViewBuilder root: () -> Root) where Data : MutableCollection, Data : RandomAccessCollection, Data : RangeReplaceableCollection, Data.Element : Hashable
```

## Parameters

**path**

A [Binding](/documentation/swiftui/binding) to the navigation state for this stack.



**root**

The view to display when the stack is empty.



## Discussion

If you don’t need access to the navigation state, use [init(root:)](/documentation/swiftui/navigationstack/init(root:)).

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
