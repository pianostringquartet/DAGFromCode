---
title: SystemFormatStyle.DateReference
description: A system format style to refer to a date in the most natural way.
source: https://developer.apple.com/documentation/swiftui/systemformatstyle/datereference
timestamp: 2025-10-29T00:15:14.288Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [systemformatstyle](/documentation/swiftui/systemformatstyle)

**Structure**

# SystemFormatStyle.DateReference

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> A system format style to refer to a date in the most natural way.

```swift
struct DateReference
```

## Overview

The reference format is designed for referring to a certain date in the most natural way possible. The concrete format depends on the distance to the date. E.g. if an event is one minute away, most people would refer to it in a relative way, e.g. the event starts “in one minute”. However, if dates are really far away, it becomes easier to refer to them in an absolute way, e.g. the original iPhone was announced in “January 2007”.

Use the style by initializing it with the date it should refer to and format it with the point of reference, usually the current time.

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Decodable](/documentation/Swift/Decodable)
- [DiscreteFormatStyle](/documentation/Foundation/DiscreteFormatStyle)
- [Encodable](/documentation/Swift/Encodable)
- [Equatable](/documentation/Swift/Equatable)
- [FormatStyle](/documentation/Foundation/FormatStyle)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Initializers

- [init(to:allowedFields:maxFieldCount:thresholdField:)](/documentation/swiftui/systemformatstyle/datereference/init(to:allowedfields:maxfieldcount:thresholdfield:)) Create a format style to refer to a date in the most natural way.

## Instance Methods

- [calendar(_:)](/documentation/swiftui/systemformatstyle/datereference/calendar(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
