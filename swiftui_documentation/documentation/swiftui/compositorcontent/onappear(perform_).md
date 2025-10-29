---
title: onAppear(perform:)
description: Adds an action to perform before this content appears.
source: https://developer.apple.com/documentation/swiftui/compositorcontent/onappear(perform:)
timestamp: 2025-10-29T00:13:29.604Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [compositorcontent](/documentation/swiftui/compositorcontent)

**Instance Method**

# onAppear(perform:)

**Available on:** macOS 26.0+, visionOS 26.0+

> Adds an action to perform before this content appears.

```swift
nonisolated func onAppear(perform action: (() -> Void)? = nil) -> some CompositorContent
```

## Parameters

**action**

The action to perform. If `action` is `nil`, the call has no effect.



## Return Value

A CompositorContent that triggers `action` before it appears.

## Discussion

The exact moment that SwiftUI calls this method depends on the specific content type that you apply it to, but the `action` closure completes before the first rendered frame appears.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
