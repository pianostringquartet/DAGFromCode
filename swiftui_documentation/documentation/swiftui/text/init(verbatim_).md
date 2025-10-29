---
title: init(verbatim:)
description: Creates a text view that displays a string literal without localization.
source: https://developer.apple.com/documentation/swiftui/text/init(verbatim:)
timestamp: 2025-10-29T00:11:22.161Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text)

**Initializer**

# init(verbatim:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a text view that displays a string literal without localization.

```swift
init(verbatim content: String)
```

## Parameters

**content**

A string to display without localization.



## Discussion

Use this initializer to create a text view with a string literal without performing localization:

```swift
Text(verbatim: "pencil") // Displays the string "pencil" in any locale.
```

If you want to localize a string literal before displaying it, use the [init(_:tableName:bundle:comment:)](/documentation/swiftui/text/init(_:tablename:bundle:comment:)) initializer instead. If you want to display a string variable, use the [init(_:)](/documentation/swiftui/text/init(_:)-9d1g4) initializer, which also bypasses localization.

## Creating a text view

- [init(_:tableName:bundle:comment:)](/documentation/swiftui/text/init(_:tablename:bundle:comment:))
- [init(_:)](/documentation/swiftui/text/init(_:))
- [init(_:style:)](/documentation/swiftui/text/init(_:style:))
- [init(_:format:)](/documentation/swiftui/text/init(_:format:))
- [init(_:formatter:)](/documentation/swiftui/text/init(_:formatter:))
- [init(timerInterval:pauseTime:countsDown:showsHours:)](/documentation/swiftui/text/init(timerinterval:pausetime:countsdown:showshours:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
