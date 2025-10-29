---
title: projectedValue
description: A projection of the state value that can be used to establish bindings between view content and accessibility focus placement.
source: https://developer.apple.com/documentation/swiftui/accessibilityfocusstate/projectedvalue
timestamp: 2025-10-29T00:14:12.465Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [accessibilityfocusstate](/documentation/swiftui/accessibilityfocusstate)

**Instance Property**

# projectedValue

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A projection of the state value that can be used to establish bindings between view content and accessibility focus placement.

```swift
var projectedValue: AccessibilityFocusState<Value>.Binding { get }
```

## Discussion

Use `projectedValue` in conjunction with [accessibilityFocused(_:equals:)](/documentation/swiftui/view/accessibilityfocused(_:equals:)) to establish bindings between view content and accessibility focus placement.

## Getting the state

- [wrappedValue](/documentation/swiftui/accessibilityfocusstate/wrappedvalue)
- [AccessibilityFocusState.Binding](/documentation/swiftui/accessibilityfocusstate/binding)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
