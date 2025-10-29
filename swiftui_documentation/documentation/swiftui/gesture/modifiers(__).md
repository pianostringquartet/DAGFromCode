---
title: modifiers(_:)
description: Combines a gesture with keyboard modifiers.
source: https://developer.apple.com/documentation/swiftui/gesture/modifiers(_:)
timestamp: 2025-10-29T00:10:04.654Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [gesture](/documentation/swiftui/gesture)

**Instance Method**

# modifiers(_:)

**Available on:** macOS 10.15+

> Combines a gesture with keyboard modifiers.

```swift
@MainActor @preconcurrency func modifiers(_ modifiers: EventModifiers) -> _ModifiersGesture<Self>
```

## Parameters

**modifiers**

A set of flags that correspond to the modifier keys that the user needs to hold down.



## Return Value

A new gesture that combines a gesture with keyboard modifiers.

## Discussion

The gesture receives updates while the user presses the modifier keys that correspond to the given modifiers option set.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
