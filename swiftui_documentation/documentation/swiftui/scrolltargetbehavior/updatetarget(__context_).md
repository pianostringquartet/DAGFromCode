---
title: updateTarget(_:context:)
description: Updates the proposed target that a scrollable view should scroll to.
source: https://developer.apple.com/documentation/swiftui/scrolltargetbehavior/updatetarget(_:context:)
timestamp: 2025-10-29T00:15:22.754Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scrolltargetbehavior](/documentation/swiftui/scrolltargetbehavior)

**Instance Method**

# updateTarget(_:context:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Updates the proposed target that a scrollable view should scroll to.

```swift
func updateTarget(_ target: inout ScrollTarget, context: Self.TargetContext)
```

## Discussion

The system calls this method in two main cases:

- When a scroll gesture ends, it calculates where it would naturally scroll to using its deceleration rate. The system provides this calculated value as the target of this method.
- When a scrollable view’s size changes, it calculates where it should be scrolled given the new size and provides this calculates value as the target of this method.

You can implement this method to override the calculated target which will have the scrollable view scroll to a different position than it would otherwise.

## Updating the proposed target

- [ScrollTargetBehavior.TargetContext](/documentation/swiftui/scrolltargetbehavior/targetcontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
