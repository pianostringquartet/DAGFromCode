---
title: projectedValue
description: A projection of the observed object that creates bindings to its properties using dynamic member lookup.
source: https://developer.apple.com/documentation/swiftui/wkapplicationdelegateadaptor/projectedvalue
timestamp: 2025-10-29T00:10:52.801Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [wkapplicationdelegateadaptor](/documentation/swiftui/wkapplicationdelegateadaptor)

**Instance Property**

# projectedValue

**Available on:** watchOS 7.0+

> A projection of the observed object that creates bindings to its properties using dynamic member lookup.

```swift
@MainActor @preconcurrency var projectedValue: ObservedObject<DelegateType>.Wrapper { get }
```

## Discussion

Use the projected value to pass a binding value down a view hierarchy. To get the `projectedValue`, prefix the property variable with `$`.

## Getting the delegate adaptor

- [wrappedValue](/documentation/swiftui/wkapplicationdelegateadaptor/wrappedvalue)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
