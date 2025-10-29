---
title: Text.Layout.RunSlice
description: A slice of a run of placed glyphs in a text layout.
source: https://developer.apple.com/documentation/swiftui/text/layout/runslice
timestamp: 2025-10-29T00:12:19.385Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text) › [layout](/documentation/swiftui/text/layout)

**Structure**

# Text.Layout.RunSlice

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A slice of a run of placed glyphs in a text layout.

```swift
struct RunSlice
```

## Conforms To

- [BidirectionalCollection](/documentation/Swift/BidirectionalCollection)
- [Collection](/documentation/Swift/Collection)
- [Equatable](/documentation/Swift/Equatable)
- [RandomAccessCollection](/documentation/Swift/RandomAccessCollection)
- [Sequence](/documentation/Swift/Sequence)

## Initializers

- [init(run:indices:)](/documentation/swiftui/text/layout/runslice/init(run:indices:))

## Instance Properties

- [characterIndices](/documentation/swiftui/text/layout/runslice/characterindices) The array of character indices corresponding to the glyphs in .
- [run](/documentation/swiftui/text/layout/runslice/run)
- [typographicBounds](/documentation/swiftui/text/layout/runslice/typographicbounds) The typographic bounds of the partial run of glyphs.

## Subscripts

- [subscript(_:)](/documentation/swiftui/text/layout/runslice/subscript(_:)) The custom attribute of type  associated with the run of glyphs, or nil.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
