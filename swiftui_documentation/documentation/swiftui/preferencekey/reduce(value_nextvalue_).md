---
title: reduce(value:nextValue:)
description: Combines a sequence of values by modifying the previously-accumulated value with the result of a closure that provides the next value.
source: https://developer.apple.com/documentation/swiftui/preferencekey/reduce(value:nextvalue:)
timestamp: 2025-10-29T00:09:46.967Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [preferencekey](/documentation/swiftui/preferencekey)

**Type Method**

# reduce(value:nextValue:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Combines a sequence of values by modifying the previously-accumulated value with the result of a closure that provides the next value.

```swift
static func reduce(value: inout Self.Value, nextValue: () -> Self.Value)
```

## Parameters

**value**

The value accumulated through previous calls to this method. The implementation should modify this value.



**nextValue**

A closure that returns the next value in the sequence.



## Discussion

This method receives its values in view-tree order. Conceptually, this combines the preference value from one tree with that of its next sibling.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
