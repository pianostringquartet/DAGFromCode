---
title: onDropSessionUpdated(_:)
description: Specifies an action to perform on each update of an ongoing drop operation activated by  or other drop modifiers.
source: https://developer.apple.com/documentation/swiftui/view/ondropsessionupdated(_:)
timestamp: 2025-10-29T00:15:01.930Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onDropSessionUpdated(_:)

**Available on:** macOS 26.0+

> Specifies an action to perform on each update of an ongoing drop operation activated by  or other drop modifiers.

```swift
nonisolated func onDropSessionUpdated(_ onUpdate: @escaping (DropSession) -> Void) -> some View
```

## Discussion

The `onUpdate` closure is called when the closest drop session in the child view hierarchy becomes active.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
