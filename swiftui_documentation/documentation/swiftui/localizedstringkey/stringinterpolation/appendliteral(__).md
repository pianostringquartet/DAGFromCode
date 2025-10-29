---
title: appendLiteral(_:)
description: Appends a literal string.
source: https://developer.apple.com/documentation/swiftui/localizedstringkey/stringinterpolation/appendliteral(_:)
timestamp: 2025-10-29T00:12:32.356Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [localizedstringkey](/documentation/swiftui/localizedstringkey) › [stringinterpolation](/documentation/swiftui/localizedstringkey/stringinterpolation)

**Instance Method**

# appendLiteral(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Appends a literal string.

```swift
mutating func appendLiteral(_ literal: String)
```

## Parameters

**literal**

The literal string to append.



## Discussion

Don’t call this method directly; it’s used by the compiler when interpreting string interpolations.

## Appending to an interpolation

- [appendInterpolation(_:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:))
- [appendInterpolation(_:specifier:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:specifier:))
- [appendInterpolation(_:format:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:format:))
- [appendInterpolation(_:formatter:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:formatter:))
- [appendInterpolation(_:style:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(_:style:))
- [appendInterpolation(timerInterval:pauseTime:countsDown:showsHours:)](/documentation/swiftui/localizedstringkey/stringinterpolation/appendinterpolation(timerinterval:pausetime:countsdown:showshours:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
