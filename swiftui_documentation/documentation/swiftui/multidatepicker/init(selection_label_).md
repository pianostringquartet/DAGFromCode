---
title: init(selection:label:)
description: Creates an instance that selects multiple dates with an unbounded range.
source: https://developer.apple.com/documentation/swiftui/multidatepicker/init(selection:label:)
timestamp: 2025-10-29T00:09:32.344Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [multidatepicker](/documentation/swiftui/multidatepicker)

**Initializer**

# init(selection:label:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, visionOS 1.0+

> Creates an instance that selects multiple dates with an unbounded range.

```swift
nonisolated init(selection: Binding<Set<DateComponents>>, @ViewBuilder label: () -> Label)
```

## Parameters

**selection**

The date values being displayed and selected.



**label**

A view that describes the use of the dates.



## Picking dates

- [init(_:selection:)](/documentation/swiftui/multidatepicker/init(_:selection:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
