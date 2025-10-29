---
title: handleUIGestureRecognizerAction(_:context:)
description: Handles recognition of the represented .
source: https://developer.apple.com/documentation/swiftui/uigesturerecognizerrepresentable/handleuigesturerecognizeraction(_:context:)
timestamp: 2025-10-29T00:11:05.365Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uigesturerecognizerrepresentable](/documentation/swiftui/uigesturerecognizerrepresentable)

**Instance Method**

# handleUIGestureRecognizerAction(_:context:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+

> Handles recognition of the represented .

```swift
@MainActor @preconcurrency func handleUIGestureRecognizerAction(_ recognizer: Self.UIGestureRecognizerType, context: Self.Context)
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
