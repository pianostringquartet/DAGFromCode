---
title: accessibilityFocused(_:)
description: Modifies this view by binding its accessibility element’s focus state to the given boolean state value.
source: https://developer.apple.com/documentation/swiftui/view/accessibilityfocused(_:)
timestamp: 2025-10-29T00:11:40.384Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# accessibilityFocused(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Modifies this view by binding its accessibility element’s focus state to the given boolean state value.

```swift
nonisolated func accessibilityFocused(_ condition: AccessibilityFocusState<Bool>.Binding) -> some View
```

## Parameters

**condition**

The accessibility focus state to bind. When accessibility focus moves to the accessibility element of the modified view, the focus value is set to `true`. If the value is set to `true` programmatically, then accessibility focus will move to accessibility element of the modified view. The value will be set to `false` if accessibility focus leaves the accessibility element of the modified view, and accessibility focus will be dismissed automatically if the value is set to `false` programmatically.



## Return Value

The modified view.

## Controlling focus

- [accessibilityFocused(_:equals:)](/documentation/swiftui/view/accessibilityfocused(_:equals:))
- [AccessibilityFocusState](/documentation/swiftui/accessibilityfocusstate)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
