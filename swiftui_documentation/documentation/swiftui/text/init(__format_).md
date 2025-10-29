---
title: init(_:format:)
description: Creates a text view that displays the formatted representation of a nonstring type supported by a corresponding format style.
source: https://developer.apple.com/documentation/swiftui/text/init(_:format:)
timestamp: 2025-10-29T00:09:30.995Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text)

**Initializer**

# init(_:format:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Creates a text view that displays the formatted representation of a nonstring type supported by a corresponding format style.

```swift
init<F>(_ input: F.FormatInput, format: F) where F : FormatStyle, F.FormatInput : Equatable, F.FormatOutput == AttributedString
```

## Parameters

**input**

The underlying value to display.



**format**

A format style of type `F` to convert the underlying value of type `F.FormatInput` to an attributed string representation.



## Discussion

Use this initializer to create a text view backed by a nonstring value, using a [Format Style](/documentation/Foundation/FormatStyle) to convert the type to an attributed string representation. Any changes to the value update the string displayed by the text view.

In the following example, three [Text](/documentation/swiftui/text) views present a date with different combinations of date and time fields, by using different [Format Style](/documentation/Foundation/Date/FormatStyle) options.

```swift
@State private var myDate = Date()
var body: some View {
    VStack {
        Text(myDate, format: Date.FormatStyle(date: .numeric, time: .omitted).attributedStyle)
        Text(myDate, format: Date.FormatStyle(date: .complete, time: .complete).attributedStyle)
        Text(myDate, format: Date.FormatStyle().hour(.defaultDigitsNoAMPM).minute().attributedStyle)
    }
}
```



## Creating a text view

- [init(_:tableName:bundle:comment:)](/documentation/swiftui/text/init(_:tablename:bundle:comment:))
- [init(_:)](/documentation/swiftui/text/init(_:))
- [init(verbatim:)](/documentation/swiftui/text/init(verbatim:))
- [init(_:style:)](/documentation/swiftui/text/init(_:style:))
- [init(_:formatter:)](/documentation/swiftui/text/init(_:formatter:))
- [init(timerInterval:pauseTime:countsDown:showsHours:)](/documentation/swiftui/text/init(timerinterval:pausetime:countsdown:showshours:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
