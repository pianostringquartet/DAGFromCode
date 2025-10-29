---
title: init(_:selection:in:)
description: Creates an instance that selects multiple dates on or after some start date.
source: https://developer.apple.com/documentation/swiftui/multidatepicker/init(_:selection:in:)
timestamp: 2025-10-29T00:12:47.829Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [multidatepicker](/documentation/swiftui/multidatepicker)

**Initializer**

# init(_:selection:in:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, visionOS 1.0+

> Creates an instance that selects multiple dates on or after some start date.

```swift
nonisolated init(_ titleKey: LocalizedStringKey, selection: Binding<Set<DateComponents>>, in bounds: PartialRangeFrom<Date>)
```

## Parameters

**titleKey**

The key for the localized title of `self`, describing its purpose.



**selection**

The date values being displayed and selected.



**bounds**

The open range from some selectable start date.



## Picking dates in a range

- [init(selection:in:label:)](/documentation/swiftui/multidatepicker/init(selection:in:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
