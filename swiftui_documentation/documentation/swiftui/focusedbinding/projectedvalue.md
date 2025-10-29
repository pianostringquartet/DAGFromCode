---
title: projectedValue
description: A binding to the optional value.
source: https://developer.apple.com/documentation/swiftui/focusedbinding/projectedvalue
timestamp: 2025-10-29T00:10:43.009Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [focusedbinding](/documentation/swiftui/focusedbinding)

**Instance Property**

# projectedValue

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A binding to the optional value.

```swift
var projectedValue: Binding<Value?> { get }
```

## Discussion

The unwrapped value is `nil` when no focused view hierarchy has published a corresponding binding.

## Getting the value

- [wrappedValue](/documentation/swiftui/focusedbinding/wrappedvalue)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
