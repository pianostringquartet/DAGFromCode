---
title: init(to:allowedFields:maxFieldCount:thresholdField:)
description: Create a format style to refer to a date in the most natural way.
source: https://developer.apple.com/documentation/swiftui/systemformatstyle/datereference/init(to:allowedfields:maxfieldcount:thresholdfield:)
timestamp: 2025-10-29T00:14:41.615Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [systemformatstyle](/documentation/swiftui/systemformatstyle) › [datereference](/documentation/swiftui/systemformatstyle/datereference)

**Initializer**

# init(to:allowedFields:maxFieldCount:thresholdField:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Create a format style to refer to a date in the most natural way.

```swift
init(to date: Date, allowedFields: Set<Date.RelativeFormatStyle.Field> = [.year, .month, .day, .hour, .minute], maxFieldCount: Int = 2, thresholdField: Date.RelativeFormatStyle.Field = .day)
```

## Parameters

**date**

The date this format references.



**allowedFields**

The units of time that may be used in the format to express the reference. The `thresholdField` is always assumed to be allowed.



**maxFieldCount**

The number of fields that can be shown at once when   using an abolute format. For example, January 9, 2007 is shown as `January 2007` by default, but as `January 9, 2007` if the `maxFieldCount` is set to three. The style automatically excludes more significant fields if their value is equal to the value in the reference date and they are not necessary for the format pattern, making room for less significant fields.



**thresholdField**

The least precise field preserving which warrants increasing the field count from one, i.e. switching from the relative   to the absolute representation.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
