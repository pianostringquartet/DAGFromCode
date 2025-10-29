---
title: LocalizedStringKey.StringInterpolation
description: Represents the contents of a string literal with interpolations while it’s being built, for use in creating a localized string key.
source: https://developer.apple.com/documentation/swiftui/localizedstringkey/stringinterpolation
timestamp: 2025-10-29T00:13:46.023Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [localizedstringkey](/documentation/swiftui/localizedstringkey)

**Structure**

# LocalizedStringKey.StringInterpolation

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Represents the contents of a string literal with interpolations while it’s being built, for use in creating a localized string key.

```swift
struct StringInterpolation
```

## Conforms To

- [StringInterpolationProtocol](/documentation/Swift/StringInterpolationProtocol)

## Appending to an interpolation

- [appendInterpolation(_:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:)) Appends an attributed string to a string interpolation.
- [appendInterpolation(_:specifier:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:specifier:)) Appends a type, convertible to a string with a format specifier, to a string interpolation.
- [appendInterpolation(_:format:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:format:)) Appends the formatted representation  of a nonstring type supported by a corresponding format style.
- [appendInterpolation(_:formatter:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:formatter:)) Appends an optionally-formatted instance of an Objective-C subclass to a string interpolation.
- [appendInterpolation(_:style:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:style:)) Appends a formatted date to a string interpolation.
- [appendInterpolation(timerInterval:pauseTime:countsDown:showsHours:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(timerinterval:pausetime:countsdown:showshours:)) Appends a timer interval to a string interpolation.
- [appendLiteral(_:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendliteral(_:)) Appends a literal string.

## Instance Methods

- [appendInterpolation(accessibilityName:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(accessibilityname:)) Appends a localized description of a color for accessibility to a string interpolation.

## Creating a key from an interpolation

- [init(stringInterpolation:)](/documentation/swiftui/localizedstringkey/init(stringinterpolation:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
