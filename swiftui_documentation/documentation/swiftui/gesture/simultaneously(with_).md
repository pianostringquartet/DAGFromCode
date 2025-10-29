---
title: simultaneously(with:)
description: Combines a gesture with another gesture to create a new gesture that recognizes both gestures at the same time.
source: https://developer.apple.com/documentation/swiftui/gesture/simultaneously(with:)
timestamp: 2025-10-29T00:11:40.038Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [gesture](/documentation/swiftui/gesture)

**Instance Method**

# simultaneously(with:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Combines a gesture with another gesture to create a new gesture that recognizes both gestures at the same time.

```swift
nonisolated func simultaneously<Other>(with other: Other) -> SimultaneousGesture<Self, Other> where Other : Gesture
```

## Parameters

**other**

A gesture that you want to combine with your gesture to create a new, combined gesture.



## Return Value

A gesture with two simultaneous gestures.

## Composing gestures

- [sequenced(before:)](/documentation/swiftui/gesture/sequenced(before:))
- [exclusively(before:)](/documentation/swiftui/gesture/exclusively(before:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
