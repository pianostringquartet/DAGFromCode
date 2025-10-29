---
title: Text.TruncationMode
description: The type of truncation to apply to a line of text when it’s too long to fit in the available space.
source: https://developer.apple.com/documentation/swiftui/text/truncationmode
timestamp: 2025-10-29T00:14:45.193Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text)

**Enumeration**

# Text.TruncationMode

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The type of truncation to apply to a line of text when it’s too long to fit in the available space.

```swift
enum TruncationMode
```

## Overview

When a text view contains more text than it’s able to display, the view might truncate the text and place an ellipsis (…) at the truncation point. Use the [truncationMode(_:)](/documentation/swiftui/view/truncationmode(_:)) modifier with one of the `TruncationMode` values to indicate which part of the text to truncate, either at the beginning, in the middle, or at the end.

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting text truncation modes

- [Text.TruncationMode.head](/documentation/swiftui/text/truncationmode/head) Truncate at the beginning of the line.
- [Text.TruncationMode.middle](/documentation/swiftui/text/truncationmode/middle) Truncate in the middle of the line.
- [Text.TruncationMode.tail](/documentation/swiftui/text/truncationmode/tail) Truncate at the end of the line.

## Fitting text into available space

- [textScale(_:isEnabled:)](/documentation/swiftui/text/textscale(_:isenabled:))
- [Text.Scale](/documentation/swiftui/text/scale)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
