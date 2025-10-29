---
title: appendInterpolation(timerInterval:pauseTime:countsDown:showsHours:)
description: Appends a timer interval to a string interpolation.
source: https://developer.apple.com/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(timerinterval:pausetime:countsdown:showshours:)
timestamp: 2025-10-29T00:14:29.740Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [localizedstringkey](/documentation/swiftui/localizedstringkey) › [stringinterpolation](/documentation/swiftui/localizedstringkey/stringinterpolation)

**Instance Method**

# appendInterpolation(timerInterval:pauseTime:countsDown:showsHours:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Appends a timer interval to a string interpolation.

```swift
mutating func appendInterpolation(timerInterval: ClosedRange<Date>, pauseTime: Date? = nil, countsDown: Bool = true, showsHours: Bool = true)
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

Don’t call this method directly; it’s used by the compiler when interpreting string interpolations.

## Appending to an interpolation

- [appendInterpolation(_:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:))
- [appendInterpolation(_:specifier:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:specifier:))
- [appendInterpolation(_:format:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:format:))
- [appendInterpolation(_:formatter:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:formatter:))
- [appendInterpolation(_:style:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:style:))
- [appendLiteral(_:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendliteral(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
