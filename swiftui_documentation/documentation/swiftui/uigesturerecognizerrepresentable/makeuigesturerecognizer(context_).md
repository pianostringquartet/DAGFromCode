---
title: makeUIGestureRecognizer(context:)
description: Creates an instance of the represented gesture recognizer.
source: https://developer.apple.com/documentation/swiftui/uigesturerecognizerrepresentable/makeuigesturerecognizer(context:)
timestamp: 2025-10-29T00:10:16.584Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uigesturerecognizerrepresentable](/documentation/swiftui/uigesturerecognizerrepresentable)

**Instance Method**

# makeUIGestureRecognizer(context:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+

> Creates an instance of the represented gesture recognizer.

```swift
@MainActor @preconcurrency func makeUIGestureRecognizer(context: Self.Context) -> Self.UIGestureRecognizerType
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
