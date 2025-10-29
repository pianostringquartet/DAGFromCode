---
title: init(_:selection:displayedComponents:)
description: Creates an instance that selects a  with an unbounded range.
source: https://developer.apple.com/documentation/swiftui/datepicker/init(_:selection:displayedcomponents:)
timestamp: 2025-10-29T00:13:47.197Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [datepicker](/documentation/swiftui/datepicker)

**Initializer**

# init(_:selection:displayedComponents:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, visionOS 1.0+, watchOS 10.0+

> Creates an instance that selects a  with an unbounded range.

```swift
nonisolated init(_ titleKey: LocalizedStringKey, selection: Binding<Date>, displayedComponents: DatePicker<Label>.Components = [.hourAndMinute, .date])
```

## Parameters

**titleKey**

The key for the localized title of `self`, describing its purpose.



**selection**

The date value being displayed and selected.



**displayedComponents**

The date components that user is able to view and edit. Defaults to `[.hourAndMinute, .date]`. On watchOS, if `.hourAndMinute` or `.hourMinuteAndSecond` are included with `.date`, only `.date` is displayed.



## Creating a date picker for any date

- [init(selection:displayedComponents:label:)](/documentation/swiftui/datepicker/init(selection:displayedcomponents:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
