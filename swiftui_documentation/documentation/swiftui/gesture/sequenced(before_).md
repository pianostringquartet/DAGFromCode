---
title: sequenced(before:)
description: Sequences a gesture with another one to create a new gesture, which results in the second gesture only receiving events after the first gesture succeeds.
source: https://developer.apple.com/documentation/swiftui/gesture/sequenced(before:)
timestamp: 2025-10-29T00:09:55.025Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [gesture](/documentation/swiftui/gesture)

**Instance Method**

# sequenced(before:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Sequences a gesture with another one to create a new gesture, which results in the second gesture only receiving events after the first gesture succeeds.

```swift
@MainActor @preconcurrency func sequenced<Other>(before other: Other) -> SequenceGesture<Self, Other> where Other : Gesture
```

## Parameters

**other**

A gesture you want to combine with another gesture to create a new, sequenced gesture.



## Return Value

A gesture that’s a sequence of two gestures.

## Composing gestures

- [simultaneously(with:)](/documentation/swiftui/gesture/simultaneously(with:))
- [exclusively(before:)](/documentation/swiftui/gesture/exclusively(before:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
