---
title: localVelocity
description: The represented gesture recognizer’s current velocity in the coordinate space of the SwiftUI view it’s attached to.
source: https://developer.apple.com/documentation/swiftui/uigesturerecognizerrepresentablecoordinatespaceconverter/localvelocity
timestamp: 2025-10-29T00:11:35.031Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uigesturerecognizerrepresentablecoordinatespaceconverter](/documentation/swiftui/uigesturerecognizerrepresentablecoordinatespaceconverter)

**Instance Property**

# localVelocity

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+

> The represented gesture recognizer’s current velocity in the coordinate space of the SwiftUI view it’s attached to.

```swift
var localVelocity: CGPoint? { get }
```

## Discussion

If the gesture recognizer does not implement a `velocityInView:` method, returns nil.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
