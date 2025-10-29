---
title: writingDirectionBased
description: The alignment following the writing direction of the same paragraph.
source: https://developer.apple.com/documentation/swiftui/text/alignmentstrategy/writingdirectionbased
timestamp: 2025-10-29T00:11:03.043Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text) › [alignmentstrategy](/documentation/swiftui/text/alignmentstrategy)

**Type Property**

# writingDirectionBased

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> The alignment following the writing direction of the same paragraph.

```swift
static let writingDirectionBased: Text.AlignmentStrategy
```

## Discussion

When [multiline Text Alignment](/documentation/swiftui/environmentvalues/multilinetextalignment) is [leading](/documentation/swiftui/textalignment/leading), alignment follows the writing direction. If the value is [trailing](/documentation/swiftui/textalignment/trailing) alignment is the opposite of the writing direction and finally, a [center](/documentation/swiftui/textalignment/center) value always results in centered alignment.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
