---
title: onEnded(_:)
description: Adds an action to perform when the gesture ends.
source: https://developer.apple.com/documentation/swiftui/gesture/onended(_:)
timestamp: 2025-10-29T00:12:32.578Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [gesture](/documentation/swiftui/gesture)

**Instance Method**

# onEnded(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Adds an action to perform when the gesture ends.

```swift
nonisolated func onEnded(_ action: @escaping (Self.Value) -> Void) -> _EndedGesture<Self>
```

## Parameters

**action**

The action to perform when this gesture ends. The `action` closure’s parameter contains the final value of the gesture.



## Return Value

A gesture that triggers `action` when the gesture ends.

## Discussion

> [!IMPORTANT]
> The action is only performed if the gesture ends successfully. Use a `@GestureState` property to track state that is reset regardless of how the gesture ends.

## Performing the gesture

- [updating(_:body:)](/documentation/swiftui/gesture/updating(_:body:))
- [onChanged(_:)](/documentation/swiftui/gesture/onchanged(_:))
- [Value](/documentation/swiftui/gesture/value)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
