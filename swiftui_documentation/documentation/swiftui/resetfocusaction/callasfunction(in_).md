---
title: callAsFunction(in:)
description: Asks the focus sytem to reevaluate the default focus item.
source: https://developer.apple.com/documentation/swiftui/resetfocusaction/callasfunction(in:)
timestamp: 2025-10-29T00:12:34.165Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [resetfocusaction](/documentation/swiftui/resetfocusaction)

**Instance Method**

# callAsFunction(in:)

**Available on:** macOS 12.0+, tvOS 14.0+, watchOS 7.0+

> Asks the focus sytem to reevaluate the default focus item.

```swift
func callAsFunction(in namespace: Namespace.ID)
```

## Parameters

**namespace**

The namespace inside which SwiftUI should reevaluate default focus. The namespace should match the [focusScope(_:)](/documentation/swiftui/view/focusscope(_:)) block where focus requires reevaluation.



## Discussion

The focus system reevaluates default focus when the currently-focused item is within the provided namespace.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
