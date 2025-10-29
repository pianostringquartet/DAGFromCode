---
title: exclusively(before:)
description: Combines two gestures exclusively to create a new gesture where only one gesture succeeds, giving precedence to the first gesture.
source: https://developer.apple.com/documentation/swiftui/gesture/exclusively(before:)
timestamp: 2025-10-29T00:11:52.984Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [gesture](/documentation/swiftui/gesture)

**Instance Method**

# exclusively(before:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Combines two gestures exclusively to create a new gesture where only one gesture succeeds, giving precedence to the first gesture.

```swift
nonisolated func exclusively<Other>(before other: Other) -> ExclusiveGesture<Self, Other> where Other : Gesture
```

## Parameters

**other**

A gesture you combine with your gesture, to create a new, combined gesture.



## Return Value

A gesture that’s the result of combining two gestures where only one of them can succeed. SwiftUI gives precedence to the first gesture.

## Composing gestures

- [simultaneously(with:)](/documentation/swiftui/gesture/simultaneously(with:))
- [sequenced(before:)](/documentation/swiftui/gesture/sequenced(before:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
