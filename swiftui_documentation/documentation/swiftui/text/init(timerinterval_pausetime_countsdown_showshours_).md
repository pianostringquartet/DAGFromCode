---
title: init(timerInterval:pauseTime:countsDown:showsHours:)
description: Creates an instance that displays a timer counting within the provided interval.
source: https://developer.apple.com/documentation/swiftui/text/init(timerinterval:pausetime:countsdown:showshours:)
timestamp: 2025-10-29T00:10:22.489Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text)

**Initializer**

# init(timerInterval:pauseTime:countsDown:showsHours:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates an instance that displays a timer counting within the provided interval.

```swift
init(timerInterval: ClosedRange<Date>, pauseTime: Date? = nil, countsDown: Bool = true, showsHours: Bool = true)
```

## Parameters

**timerInterval**

The interval between where to run the timer.



**pauseTime**

If present, the date at which to pause the timer. The default is `nil` which indicates to never pause.



**countsDown**

Whether to count up or down. The default is `true`.



**showsHours**

Whether to include an hours component if there are more than 60 minutes left on the timer. The default is `true`.



## Discussion

```swift
Text(
    timerInterval: Date.now...Date(timeInterval: 12 * 60, since: .now),
    pauseTime: Date.now + (10 * 60))
```

The example above shows a text that displays a timer counting down from “12:00” and will pause when reaching “10:00”.

## Creating a text view

- [init(_:tableName:bundle:comment:)](/documentation/swiftui/text/init(_:tablename:bundle:comment:))
- [init(_:)](/documentation/swiftui/text/init(_:))
- [init(verbatim:)](/documentation/swiftui/text/init(verbatim:))
- [init(_:style:)](/documentation/swiftui/text/init(_:style:))
- [init(_:format:)](/documentation/swiftui/text/init(_:format:))
- [init(_:formatter:)](/documentation/swiftui/text/init(_:formatter:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
