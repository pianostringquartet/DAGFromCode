---
title: makeNSGestureRecognizer(context:)
description: Creates an instance of the represented gesture recognizer.
source: https://developer.apple.com/documentation/swiftui/nsgesturerecognizerrepresentable/makensgesturerecognizer(context:)
timestamp: 2025-10-29T00:09:43.330Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nsgesturerecognizerrepresentable](/documentation/swiftui/nsgesturerecognizerrepresentable)

**Instance Method**

# makeNSGestureRecognizer(context:)

**Available on:** macOS 26.0+

> Creates an instance of the represented gesture recognizer.

```swift
@MainActor @preconcurrency func makeNSGestureRecognizer(context: Self.Context) -> Self.NSGestureRecognizerType
```

## Parameters

**context**

A context structure containing information about the current state of the system, such as the current coordinator instance.



## Discussion

> [!NOTE]
> Gesture recognizers are created on-demand and torn down when an event sequence ends, so do not perform expensive work in this method.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
