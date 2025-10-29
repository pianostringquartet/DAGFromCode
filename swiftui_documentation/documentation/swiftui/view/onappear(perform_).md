---
title: onAppear(perform:)
description: Adds an action to perform before this view appears.
source: https://developer.apple.com/documentation/swiftui/view/onappear(perform:)
timestamp: 2025-10-29T00:12:45.954Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onAppear(perform:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Adds an action to perform before this view appears.

```swift
nonisolated func onAppear(perform action: (() -> Void)? = nil) -> some View
```

## Parameters

**action**

The action to perform. If `action` is `nil`, the call has no effect.



## Return Value

A view that triggers `action` before it appears.

## Discussion

The exact moment that SwiftUI calls this method depends on the specific view type that you apply it to, but the `action` closure completes before the first rendered frame appears.

## Responding to view life cycle updates

- [onDisappear(perform:)](/documentation/swiftui/view/ondisappear(perform:))
- [task(priority:_:)](/documentation/swiftui/view/task(priority:_:))
- [task(id:priority:_:)](/documentation/swiftui/view/task(id:priority:_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
