---
title: onDisappear(perform:)
description: Adds an action to perform after this content disappears.
source: https://developer.apple.com/documentation/swiftui/compositorcontent/ondisappear(perform:)
timestamp: 2025-10-29T00:14:23.470Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [compositorcontent](/documentation/swiftui/compositorcontent)

**Instance Method**

# onDisappear(perform:)

**Available on:** macOS 26.0+, visionOS 26.0+

> Adds an action to perform after this content disappears.

```swift
nonisolated func onDisappear(perform action: (() -> Void)? = nil) -> some CompositorContent
```

## Parameters

**action**

The action to perform. If `action` is `nil`, the call has no effect.



## Return Value

A CompositorContent that triggers `action` after it disappears.

## Discussion

The exact moment that SwiftUI calls this method depends on the specific content type that you apply it to, but the `action` closure doesn’t execute until the content disappears from the interface.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
