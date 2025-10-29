---
title: isFocused
description: Returns whether the nearest focusable ancestor has focus.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/isfocused
timestamp: 2025-10-29T00:11:37.325Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# isFocused

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Returns whether the nearest focusable ancestor has focus.

```swift
var isFocused: Bool { get }
```

## Discussion

If there is no focusable ancestor, the value is `false`.

## Managing focus state

- [focused(_:equals:)](/documentation/swiftui/view/focused(_:equals:))
- [focused(_:)](/documentation/swiftui/view/focused(_:))
- [FocusState](/documentation/swiftui/focusstate)
- [FocusedValue](/documentation/swiftui/focusedvalue)
- [Entry()](/documentation/swiftui/entry())
- [FocusedValueKey](/documentation/swiftui/focusedvaluekey)
- [FocusedBinding](/documentation/swiftui/focusedbinding)
- [searchFocused(_:)](/documentation/swiftui/view/searchfocused(_:))
- [searchFocused(_:equals:)](/documentation/swiftui/view/searchfocused(_:equals:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
