---
title: focusScope(_:)
description: Creates a focus scope that SwiftUI uses to limit default focus preferences.
source: https://developer.apple.com/documentation/swiftui/view/focusscope(_:)
timestamp: 2025-10-29T00:14:51.661Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# focusScope(_:)

**Available on:** macOS 12.0+, tvOS 14.0+, watchOS 7.0+

> Creates a focus scope that SwiftUI uses to limit default focus preferences.

```swift
nonisolated func focusScope(_ namespace: Namespace.ID) -> some View
```

## Parameters

**namespace**

A namespace identifier that SwiftUI can use to scope default focus preferences.



## Return Value

A view that sets the namespace of descendants for default focus.

## Discussion

The returned view gets associated with the provided namespace. Pass this namespace to [prefersDefaultFocus(_:in:)](/documentation/swiftui/view/prefersdefaultfocus(_:in:)) and the [reset Focus](/documentation/swiftui/environmentvalues/resetfocus) function.

## Setting focus scope

- [focusSection()](/documentation/swiftui/view/focussection())

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
