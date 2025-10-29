---
title: onChanged(_:)
description: Adds an action to perform when the gesture’s value changes.
source: https://developer.apple.com/documentation/swiftui/gesture/onchanged(_:)
timestamp: 2025-10-29T00:14:05.299Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [gesture](/documentation/swiftui/gesture)

**Instance Method**

# onChanged(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Adds an action to perform when the gesture’s value changes.

```swift
@MainActor @preconcurrency func onChanged(_ action: @escaping (Self.Value) -> Void) -> _ChangedGesture<Self>
```

## Parameters

**action**

The action to perform when this gesture’s value changes. The `action` closure’s parameter contains the gesture’s new value.



## Return Value

A gesture that triggers `action` when this gesture’s value changes.

## Performing the gesture

- [updating(_:body:)](/documentation/swiftui/gesture/updating(_:body:))
- [onEnded(_:)](/documentation/swiftui/gesture/onended(_:))
- [Value](/documentation/swiftui/gesture/value)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
