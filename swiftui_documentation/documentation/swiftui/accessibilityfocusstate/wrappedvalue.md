---
title: wrappedValue
description: The current state value, taking into account whatever bindings might be in effect due to the current location of focus.
source: https://developer.apple.com/documentation/swiftui/accessibilityfocusstate/wrappedvalue
timestamp: 2025-10-29T00:10:19.973Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [accessibilityfocusstate](/documentation/swiftui/accessibilityfocusstate)

**Instance Property**

# wrappedValue

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The current state value, taking into account whatever bindings might be in effect due to the current location of focus.

```swift
var wrappedValue: Value { get nonmutating set }
```

## Discussion

When focus is not in any view that is bound to this state, the wrapped value will be `nil` (for optional-typed state) or `false` (for `Bool`- typed state).

## Getting the state

- [projectedValue](/documentation/swiftui/accessibilityfocusstate/projectedvalue)
- [AccessibilityFocusState.Binding](/documentation/swiftui/accessibilityfocusstate/binding)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
