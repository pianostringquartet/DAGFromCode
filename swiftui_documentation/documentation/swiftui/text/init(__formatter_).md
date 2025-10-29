---
title: init(_:formatter:)
description: Creates a text view that displays the formatted representation of a Foundation object.
source: https://developer.apple.com/documentation/swiftui/text/init(_:formatter:)
timestamp: 2025-10-29T00:10:03.847Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text)

**Initializer**

# init(_:formatter:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Creates a text view that displays the formatted representation of a Foundation object.

```swift
init<Subject>(_ subject: Subject, formatter: Formatter) where Subject : NSObject
```

## Parameters

**subject**

An [NSObject-swift.class](/documentation/ObjectiveC/NSObject-swift.class) instance compatible with `formatter`.



**formatter**

A [Formatter](/documentation/Foundation/Formatter) capable of converting `subject` into a string representation.



## Discussion

Use this initializer to create a text view that formats `subject` using `formatter`.

## Creating a text view

- [init(_:tableName:bundle:comment:)](/documentation/swiftui/text/init(_:tablename:bundle:comment:))
- [init(_:)](/documentation/swiftui/text/init(_:))
- [init(verbatim:)](/documentation/swiftui/text/init(verbatim:))
- [init(_:style:)](/documentation/swiftui/text/init(_:style:))
- [init(_:format:)](/documentation/swiftui/text/init(_:format:))
- [init(timerInterval:pauseTime:countsDown:showsHours:)](/documentation/swiftui/text/init(timerinterval:pausetime:countsdown:showshours:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
