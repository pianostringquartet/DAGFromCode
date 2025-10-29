---
title: init(selection:content:)
description: Creates a list with the given content that supports selecting a single row that cannot be deselected.
source: https://developer.apple.com/documentation/swiftui/list/init(selection:content:)
timestamp: 2025-10-29T00:12:15.443Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [list](/documentation/swiftui/list)

**Initializer**

# init(selection:content:)

**Available on:** macOS 13.0+

> Creates a list with the given content that supports selecting a single row that cannot be deselected.

```swift
@MainActor @preconcurrency init(selection: Binding<SelectionValue>, @ViewBuilder content: () -> Content)
```

## Parameters

**selection**

A binding to a selected row.



**content**

The content of the list.



## Creating a list from a set of views

- [init(content:)](/documentation/swiftui/list/init(content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
