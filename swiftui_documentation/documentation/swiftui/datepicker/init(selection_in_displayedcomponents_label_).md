---
title: init(selection:in:displayedComponents:label:)
description: Creates an instance that selects a  in a closed range.
source: https://developer.apple.com/documentation/swiftui/datepicker/init(selection:in:displayedcomponents:label:)
timestamp: 2025-10-29T00:10:20.967Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [datepicker](/documentation/swiftui/datepicker)

**Initializer**

# init(selection:in:displayedComponents:label:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, visionOS 1.0+, watchOS 10.0+

> Creates an instance that selects a  in a closed range.

```swift
nonisolated init(selection: Binding<Date>, in range: ClosedRange<Date>, displayedComponents: DatePicker<Label>.Components = [.hourAndMinute, .date], @ViewBuilder label: () -> Label)
```

## Parameters

**selection**

The date value being displayed and selected.



**range**

The inclusive range of selectable dates.



**displayedComponents**

The date components that user is able to view and edit. Defaults to `[.hourAndMinute, .date]`. On watchOS, if `.hourAndMinute` or `.hourMinuteAndSecond` are included with `.date`, only `.date` is displayed.



**label**

A view that describes the use of the date.



## Creating a date picker for specific dates

- [init(_:selection:in:displayedComponents:)](/documentation/swiftui/datepicker/init(_:selection:in:displayedcomponents:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
