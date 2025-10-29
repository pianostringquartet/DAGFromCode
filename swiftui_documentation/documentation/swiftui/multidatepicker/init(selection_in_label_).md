---
title: init(selection:in:label:)
description: Creates an instance that selects multiple dates on or after some start date.
source: https://developer.apple.com/documentation/swiftui/multidatepicker/init(selection:in:label:)
timestamp: 2025-10-29T00:12:42.638Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [multidatepicker](/documentation/swiftui/multidatepicker)

**Initializer**

# init(selection:in:label:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, visionOS 1.0+

> Creates an instance that selects multiple dates on or after some start date.

```swift
nonisolated init(selection: Binding<Set<DateComponents>>, in bounds: PartialRangeFrom<Date>, @ViewBuilder label: () -> Label)
```

## Parameters

**selection**

The date values being displayed and selected.



**bounds**

The open range from some selectable start date.



**label**

A view that describes the use of the dates.



## Picking dates in a range

- [init(_:selection:in:)](/documentation/swiftui/multidatepicker/init(_:selection:in:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
