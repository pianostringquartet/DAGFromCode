---
title: init(to:allowedFields:maxFieldCount:sign:)
description: Create a format style to display the offset to a certain date.
source: https://developer.apple.com/documentation/swiftui/systemformatstyle/dateoffset/init(to:allowedfields:maxfieldcount:sign:)
timestamp: 2025-10-29T00:11:10.644Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [systemformatstyle](/documentation/swiftui/systemformatstyle) › [dateoffset](/documentation/swiftui/systemformatstyle/dateoffset)

**Initializer**

# init(to:allowedFields:maxFieldCount:sign:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Create a format style to display the offset to a certain date.

```swift
init(to anchor: Date, allowedFields: Set<Date.ComponentsFormatStyle.Field> = [.year, .month, .week, .day, .hour, .minute, .second], maxFieldCount: Int = 2, sign: NumberFormatStyleConfiguration.SignDisplayStrategy = .automatic)
```

## Parameters

**anchor**

The date the offset is measured to from the format input.



**allowedFields**

The units of time that may be used in the format to express the offset.



**maxFieldCount**

The number of fields that can be shown at once. For example, 1 hour, 34 minutes, and 23 seconds is shown as `1 hour, 34 minutes` by default, but as `1 hour` if the `maxFieldCount` is set to one.



**sign**

The strategy for displaying a sign to signal whether the offset points to ward the future or past.



## Discussion

The time format (`3:46`) is used as long as only minutes and seconds, or hours, minutes, and second may be shown. Otherwise, calendar units are used, resulting in outputs like `3 months, 11 days`.

The offset to the `anchor` is “positive” if the formatted `date` is greater than the given `anchor` specified here. Conversely, “negative” offsets are displayed if the input `date` is smaller than the `anchor`.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
