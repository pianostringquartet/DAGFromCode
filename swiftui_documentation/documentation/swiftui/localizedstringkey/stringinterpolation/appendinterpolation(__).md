---
title: appendInterpolation(_:)
description: Appends an attributed string to a string interpolation.
source: https://developer.apple.com/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:)
timestamp: 2025-10-29T00:14:19.124Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [localizedstringkey](/documentation/swiftui/localizedstringkey) › [stringinterpolation](/documentation/swiftui/localizedstringkey/stringinterpolation)

**Instance Method**

# appendInterpolation(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Appends an attributed string to a string interpolation.

```swift
mutating func appendInterpolation(_ attributedString: AttributedString)
```

## Parameters

**attributedString**

The attributed string to append.



## Discussion

Don’t call this method directly; it’s used by the compiler when interpreting string interpolations.

The following example shows how to use a string interpolation to format an [Attributed String](/documentation/Foundation/AttributedString) and append it to static text. The resulting interpolation implicitly creates a [Localized String Key](/documentation/swiftui/localizedstringkey), which a [Text](/documentation/swiftui/text) view uses to provide its content.

```swift
struct ContentView: View {

    var nextDate: AttributedString {
        var result = Calendar.current
            .nextWeekend(startingAfter: Date.now)!
            .start
            .formatted(
                .dateTime
                .month(.wide)
                .day()
                .attributed
            )
        result.backgroundColor = .green
        result.foregroundColor = .white
        return result
    }

    var body: some View {
        Text("Our next catch-up is on \(nextDate)!")
    }
}
```

For this example, assume that the app runs on a device set to a Russian locale, and has the following entry in a Russian-localized `Localizable.strings` file:

```swift
"Our next catch-up is on %@!" = "Наша следующая встреча состоится %@!";
```

The attributed string `nextDate` replaces the format specifier `%@`,  maintaining its color and date-formatting attributes, when the [Text](/documentation/swiftui/text) view renders its contents:



## Appending to an interpolation

- [appendInterpolation(_:specifier:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:specifier:))
- [appendInterpolation(_:format:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:format:))
- [appendInterpolation(_:formatter:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:formatter:))
- [appendInterpolation(_:style:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:style:))
- [appendInterpolation(timerInterval:pauseTime:countsDown:showsHours:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(timerinterval:pausetime:countsdown:showshours:))
- [appendLiteral(_:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendliteral(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
