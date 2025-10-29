---
title: appendInterpolation(_:formatter:)
description: Appends an optionally-formatted instance of an Objective-C subclass to a string interpolation.
source: https://developer.apple.com/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:formatter:)
timestamp: 2025-10-29T00:14:44.659Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [localizedstringkey](/documentation/swiftui/localizedstringkey) › [stringinterpolation](/documentation/swiftui/localizedstringkey/stringinterpolation)

**Instance Method**

# appendInterpolation(_:formatter:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Appends an optionally-formatted instance of an Objective-C subclass to a string interpolation.

```swift
mutating func appendInterpolation<Subject>(_ subject: Subject, formatter: Formatter? = nil) where Subject : NSObject
```

## Parameters

**subject**

An [NSObject-swift.class](/documentation/ObjectiveC/NSObject-swift.class) to append.



**formatter**

A formatter to convert `subject` to a string representation.



## Discussion

Don’t call this method directly; it’s used by the compiler when interpreting string interpolations.

The following example shows how to use a [Measurement](/documentation/Foundation/Measurement) value and a [Measurement Formatter](/documentation/Foundation/MeasurementFormatter) to create a [Localized String Key](/documentation/swiftui/localizedstringkey) that uses the formatter style [long](/documentation/Foundation/Formatter/UnitStyle/long) when generating the measurement’s string representation. Rather than calling `appendInterpolation(_:formatter)` directly, the code gets the formatting behavior implicitly by using the `\()` string interpolation syntax.

```swift
let siResistance = Measurement(value: 640, unit: UnitElectricResistance.ohms)
let formatter = MeasurementFormatter()
formatter.unitStyle = .long
let key = LocalizedStringKey ("Resistance: \(siResistance, formatter: formatter)")
let text1 = Text(key) // Text contains "Resistance: 640 ohms"
```

## Appending to an interpolation

- [appendInterpolation(_:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:))
- [appendInterpolation(_:specifier:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:specifier:))
- [appendInterpolation(_:format:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:format:))
- [appendInterpolation(_:style:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:style:))
- [appendInterpolation(timerInterval:pauseTime:countsDown:showsHours:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(timerinterval:pausetime:countsdown:showshours:))
- [appendLiteral(_:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendliteral(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
