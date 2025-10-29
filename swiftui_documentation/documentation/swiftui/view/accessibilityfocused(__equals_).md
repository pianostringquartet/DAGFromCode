---
title: accessibilityFocused(_:equals:)
description: Modifies this view by binding its accessibility element’s focus state to the given state value.
source: https://developer.apple.com/documentation/swiftui/view/accessibilityfocused(_:equals:)
timestamp: 2025-10-29T00:11:34.077Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# accessibilityFocused(_:equals:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Modifies this view by binding its accessibility element’s focus state to the given state value.

```swift
nonisolated func accessibilityFocused<Value>(_ binding: AccessibilityFocusState<Value>.Binding, equals value: Value) -> some View where Value : Hashable
```

## Parameters

**binding**

The state binding to register. When accessibility focus moves to the accessibility element of the modified view, SwiftUI sets the bound value to the corresponding match value. If you set the state value programmatically to the matching value, then accessibility focus moves to the accessibility element of the modified view. SwiftUI sets the value to `nil` if accessibility focus leaves the accessibility element associated with the modified view, and programmatically setting the value to `nil` dismisses focus automatically.



**value**

The value to match against when determining whether the binding should change.



## Return Value

The modified view.

## Controlling focus

- [accessibilityFocused(_:)](/documentation/swiftui/view/accessibilityfocused(_:))
- [AccessibilityFocusState](/documentation/swiftui/accessibilityfocusstate)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
