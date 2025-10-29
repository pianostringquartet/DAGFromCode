---
title: Text.AlignmentStrategy
description: The way SwiftUI infers the appropriate text alignment if no value is explicitly provided.
source: https://developer.apple.com/documentation/swiftui/text/alignmentstrategy
timestamp: 2025-10-29T00:12:12.012Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text)

**Structure**

# Text.AlignmentStrategy

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> The way SwiftUI infers the appropriate text alignment if no value is explicitly provided.

```swift
struct AlignmentStrategy
```

## Overview

> [!NOTE]
> [Text](/documentation/swiftui/text) tightly wraps its content, so text alignment only affects how lines are positioned relative to each other. The text as a whole needs to be positioned at the view level using [Alignment](/documentation/swiftui/alignment).

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Type Properties

- [default](/documentation/swiftui/text/alignmentstrategy/default) The default strategy based on the context it is used in.
- [layoutBased](/documentation/swiftui/text/alignmentstrategy/layoutbased) The alignment following the environment setting.
- [writingDirectionBased](/documentation/swiftui/text/alignmentstrategy/writingdirectionbased) The alignment following the writing direction of the same paragraph.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
