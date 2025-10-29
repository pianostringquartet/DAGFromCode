---
title: init(nsUnderlineStyle:)
description: Creates a  from .
source: https://developer.apple.com/documentation/swiftui/text/linestyle/init(nsunderlinestyle:)
timestamp: 2025-10-29T00:10:44.586Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text) › [linestyle](/documentation/swiftui/text/linestyle)

**Initializer**

# init(nsUnderlineStyle:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Creates a  from .

```swift
init?(nsUnderlineStyle: NSUnderlineStyle)
```

## Parameters

**nsUnderlineStyle**

A value of `NSUnderlineStyle` to wrap with `Text.LineStyle`.



## Return Value

A new `Text.LineStyle` or `nil` when `nsUnderlineStyle` contains styles not supported by `Text.LineStyle`.

## Discussion

> [!NOTE]
> Use this initializer only if you need to convert an existing `NSUnderlineStyle` to a SwiftUI `Text.LineStyle`. Otherwise, create a `Text.LineStyle` using an initializer like [init(pattern:color:)](/documentation/swiftui/text/linestyle/init(pattern:color:)).

## Creating a text line style

- [init(pattern:color:)](/documentation/swiftui/text/linestyle/init(pattern:color:))
- [Text.LineStyle.Pattern](/documentation/swiftui/text/linestyle/pattern)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
