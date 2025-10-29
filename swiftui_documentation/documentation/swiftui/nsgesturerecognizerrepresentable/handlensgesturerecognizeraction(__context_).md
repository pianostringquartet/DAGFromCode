---
title: handleNSGestureRecognizerAction(_:context:)
description: Handles recognition of the represented .
source: https://developer.apple.com/documentation/swiftui/nsgesturerecognizerrepresentable/handlensgesturerecognizeraction(_:context:)
timestamp: 2025-10-29T00:10:34.632Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nsgesturerecognizerrepresentable](/documentation/swiftui/nsgesturerecognizerrepresentable)

**Instance Method**

# handleNSGestureRecognizerAction(_:context:)

**Available on:** macOS 26.0+

> Handles recognition of the represented .

```swift
@MainActor @preconcurrency func handleNSGestureRecognizerAction(_ recognizer: Self.NSGestureRecognizerType, context: Self.Context)
```

## Parameters

**recognizer**

An instance of the represented gesture recognizer.



**context**

A context structure containing information about the current state of the system, such as the current coordinator instance.



## Discussion

If you implement this method, SwiftUI calls it when the wrapped gesture recognizer is recognized.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
