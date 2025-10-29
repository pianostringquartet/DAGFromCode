---
title: appendInterpolation(_:format:)
description: Appends the formatted representation  of a nonstring type supported by a corresponding format style.
source: https://developer.apple.com/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:format:)
timestamp: 2025-10-29T00:10:16.442Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [localizedstringkey](/documentation/swiftui/localizedstringkey) › [stringinterpolation](/documentation/swiftui/localizedstringkey/stringinterpolation)

**Instance Method**

# appendInterpolation(_:format:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Appends the formatted representation  of a nonstring type supported by a corresponding format style.

```swift
mutating func appendInterpolation<F>(_ input: F.FormatInput, format: F) where F : FormatStyle, F.FormatInput : Equatable, F.FormatOutput == AttributedString
```

## Parameters

**input**

The instance to format and append.



**format**

A format style to use when converting `input` into an attributed string representation.



## Discussion

Don’t call this method directly; it’s used by the compiler when interpreting string interpolations.

The following example shows how to use a string interpolation to format a [Date](/documentation/Foundation/Date) with a [Format Style](/documentation/Foundation/Date/FormatStyle) and append it to static text. The resulting interpolation implicitly creates a [Localized String Key](/documentation/swiftui/localizedstringkey), which a [Text](/documentation/swiftui/text) uses to provide its content.

```swift
Text("The time is \(myDate, format: Date.FormatStyle(date: .omitted, time:.complete).attributedStyle)")
```

## Appending to an interpolation

- [appendInterpolation(_:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:))
- [appendInterpolation(_:specifier:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:specifier:))
- [appendInterpolation(_:formatter:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:formatter:))
- [appendInterpolation(_:style:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:style:))
- [appendInterpolation(timerInterval:pauseTime:countsDown:showsHours:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(timerinterval:pausetime:countsdown:showshours:))
- [appendLiteral(_:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendliteral(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
