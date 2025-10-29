---
title: onDisappear(perform:)
description: Adds an action to perform after this view disappears.
source: https://developer.apple.com/documentation/swiftui/view/ondisappear(perform:)
timestamp: 2025-10-29T00:11:47.264Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onDisappear(perform:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Adds an action to perform after this view disappears.

```swift
nonisolated func onDisappear(perform action: (() -> Void)? = nil) -> some View
```

## Parameters

**action**

The action to perform. If `action` is `nil`, the call has no effect.



## Return Value

A view that triggers `action` after it disappears.

## Discussion

The exact moment that SwiftUI calls this method depends on the specific view type that you apply it to, but the `action` closure doesn’t execute until the view disappears from the interface.

## Responding to view life cycle updates

- [onAppear(perform:)](/documentation/swiftui/view/onappear(perform:))
- [task(priority:_:)](/documentation/swiftui/view/task(priority:_:))
- [task(id:priority:_:)](/documentation/swiftui/view/task(id:priority:_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
