---
title: previewContext(_:)
description: Declares a context for the preview.
source: https://developer.apple.com/documentation/swiftui/view/previewcontext(_:)
timestamp: 2025-10-29T00:10:50.425Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# previewContext(_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Declares a context for the preview.

```swift
nonisolated func previewContext<C>(_ value: C) -> some View where C : PreviewContext
```

## Parameters

**value**

The context for the preview; the default is `nil`.



## Setting a context

- [PreviewContext](/documentation/swiftui/previewcontext)
- [PreviewContextKey](/documentation/swiftui/previewcontextkey)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
