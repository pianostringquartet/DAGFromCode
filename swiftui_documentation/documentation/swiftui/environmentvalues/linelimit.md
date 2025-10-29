---
title: lineLimit
description: The maximum number of lines that text can occupy in a view.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/linelimit
timestamp: 2025-10-29T00:11:45.578Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# lineLimit

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The maximum number of lines that text can occupy in a view.

```swift
var lineLimit: Int? { get set }
```

## Discussion

The maximum number of lines is `1` if the value is less than `1`. If the value is `nil`, the text uses as many lines as required. The default is `nil`.

## Limiting line count for multiline text

- [lineLimit(_:)](/documentation/swiftui/view/linelimit(_:))
- [lineLimit(_:reservesSpace:)](/documentation/swiftui/view/linelimit(_:reservesspace:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
