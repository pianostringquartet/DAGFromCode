---
title: Text.Layout
description: A value describing the layout and custom attributes of a tree of  views.
source: https://developer.apple.com/documentation/swiftui/text/layout
timestamp: 2025-10-29T00:14:08.526Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text)

**Structure**

# Text.Layout

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A value describing the layout and custom attributes of a tree of  views.

```swift
struct Layout
```

## Conforms To

- [BidirectionalCollection](/documentation/Swift/BidirectionalCollection)
- [Collection](/documentation/Swift/Collection)
- [Equatable](/documentation/Swift/Equatable)
- [RandomAccessCollection](/documentation/Swift/RandomAccessCollection)
- [Sequence](/documentation/Swift/Sequence)

## Structures

- [Text.Layout.CharacterIndex](/documentation/swiftui/text/layout/characterindex) The index of a character in the source text. An opaque type, this is intended to be used to determine relative locations of elements in the layout, rather than how they map to the source strings.
- [Text.Layout.DrawingOptions](/documentation/swiftui/text/layout/drawingoptions) Option flags used when drawing  lines or runs into a graphics context.
- [Text.Layout.Line](/documentation/swiftui/text/layout/line) A single line in a text layout: a collection of runs of placed glyphs.
- [Text.Layout.Run](/documentation/swiftui/text/layout/run) A run of placed glyphs in a text layout.
- [Text.Layout.RunSlice](/documentation/swiftui/text/layout/runslice) A slice of a run of placed glyphs in a text layout.
- [Text.Layout.TypographicBounds](/documentation/swiftui/text/layout/typographicbounds) The typographic bounds of an element in a text layout.

## Instance Properties

- [isTruncated](/documentation/swiftui/text/layout/istruncated) Indicates if this text is truncated.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
