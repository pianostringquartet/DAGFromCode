---
title: relative
description: A style displaying a date as relative to now.
source: https://developer.apple.com/documentation/swiftui/text/datestyle/relative
timestamp: 2025-10-29T00:10:00.907Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text) › [datestyle](/documentation/swiftui/text/datestyle)

**Type Property**

# relative

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A style displaying a date as relative to now.

```swift
static let relative: Text.DateStyle
```

## Discussion

```swift
Text(event.startDate, style: .relative)
```

Example output: 2 hours, 23 minutes 1 year, 1 month

## Getting text date styles

- [date](/documentation/swiftui/text/datestyle/date)
- [offset](/documentation/swiftui/text/datestyle/offset)
- [time](/documentation/swiftui/text/datestyle/time)
- [timer](/documentation/swiftui/text/datestyle/timer)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
