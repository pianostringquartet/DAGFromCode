---
title: Text.Layout.Run
description: A run of placed glyphs in a text layout.
source: https://developer.apple.com/documentation/swiftui/text/layout/run
timestamp: 2025-10-29T00:12:54.291Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text) › [layout](/documentation/swiftui/text/layout)

**Structure**

# Text.Layout.Run

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A run of placed glyphs in a text layout.

```swift
struct Run
```

## Conforms To

- [BidirectionalCollection](/documentation/Swift/BidirectionalCollection)
- [Collection](/documentation/Swift/Collection)
- [Equatable](/documentation/Swift/Equatable)
- [RandomAccessCollection](/documentation/Swift/RandomAccessCollection)
- [Sequence](/documentation/Swift/Sequence)

## Instance Properties

- [characterIndices](/documentation/swiftui/text/layout/run/characterindices) The array of character indices corresponding to the glyphs in .
- [layoutDirection](/documentation/swiftui/text/layout/run/layoutdirection) The layout direction of the text run.
- [typographicBounds](/documentation/swiftui/text/layout/run/typographicbounds) The typographic bounds of the run of glyphs.

## Subscripts

- [subscript(_:)](/documentation/swiftui/text/layout/run/subscript(_:)) The custom attribute of type  associated with the run of glyphs, or nil. If no run contains the custom attribute we also check its attachment’s runs.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
