---
title: Text.LineStyle
description: Description of the style used to draw the line for  and .
source: https://developer.apple.com/documentation/swiftui/text/linestyle
timestamp: 2025-10-29T00:11:45.754Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text)

**Structure**

# Text.LineStyle

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Description of the style used to draw the line for  and .

```swift
struct LineStyle
```

## Overview

Use this type to specify `underlineStyle` and `strikethroughStyle` SwiftUI attributes of an `AttributedString`.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting text line styles

- [single](/documentation/swiftui/text/linestyle/single) Draw a single solid line.

## Creating a text line style

- [init(nsUnderlineStyle:)](/documentation/swiftui/text/linestyle/init(nsunderlinestyle:)) Creates a  from .
- [init(pattern:color:)](/documentation/swiftui/text/linestyle/init(pattern:color:)) Creates a line style.
- [Text.LineStyle.Pattern](/documentation/swiftui/text/linestyle/pattern) The pattern, that the line has.

## Styling the view’s text

- [foregroundStyle(_:)](/documentation/swiftui/text/foregroundstyle(_:))
- [bold()](/documentation/swiftui/text/bold())
- [bold(_:)](/documentation/swiftui/text/bold(_:))
- [italic()](/documentation/swiftui/text/italic())
- [italic(_:)](/documentation/swiftui/text/italic(_:))
- [strikethrough(_:color:)](/documentation/swiftui/text/strikethrough(_:color:))
- [strikethrough(_:pattern:color:)](/documentation/swiftui/text/strikethrough(_:pattern:color:))
- [underline(_:color:)](/documentation/swiftui/text/underline(_:color:))
- [underline(_:pattern:color:)](/documentation/swiftui/text/underline(_:pattern:color:))
- [monospaced(_:)](/documentation/swiftui/text/monospaced(_:))
- [monospacedDigit()](/documentation/swiftui/text/monospaceddigit())
- [kerning(_:)](/documentation/swiftui/text/kerning(_:))
- [tracking(_:)](/documentation/swiftui/text/tracking(_:))
- [baselineOffset(_:)](/documentation/swiftui/text/baselineoffset(_:))
- [Text.Case](/documentation/swiftui/text/case)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
