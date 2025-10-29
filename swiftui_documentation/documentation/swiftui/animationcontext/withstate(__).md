---
title: withState(_:)
description: Creates a new context from another one with a state that you provide.
source: https://developer.apple.com/documentation/swiftui/animationcontext/withstate(_:)
timestamp: 2025-10-29T00:11:22.327Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [animationcontext](/documentation/swiftui/animationcontext)

**Instance Method**

# withState(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates a new context from another one with a state that you provide.

```swift
func withState<T>(_ state: AnimationState<T>) -> AnimationContext<T> where T : VectorArithmetic
```

## Parameters

**state**

The initial state for the new context.



## Return Value

A new context that contains the specified state.

## Discussion

Use this method to create a new context that contains the state that you provide and view environment values from the original context.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
