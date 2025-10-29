---
title: searchFocused(_:equals:)
description: Modifies this view by binding the focus state of the search field associated with the nearest searchable modifier to the given value.
source: https://developer.apple.com/documentation/swiftui/view/searchfocused(_:equals:)
timestamp: 2025-10-29T00:11:33.913Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# searchFocused(_:equals:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 2.0+

> Modifies this view by binding the focus state of the search field associated with the nearest searchable modifier to the given value.

```swift
nonisolated func searchFocused<V>(_ binding: FocusState<V>.Binding, equals value: V) -> some View where V : Hashable
```

## Parameters

**binding**

The state binding to register. When focus moves to the associated search field, the binding sets the bound value to the corresponding match value. If a caller sets the state value programmatically to the matching value, then focus moves to the search field. When focus leaves the search field, the binding sets the bound value to `nil`. If a caller sets the value to `nil`, SwiftUI automatically dismisses focus.



**value**

The value to match against when determining whether the binding should change.



## Return Value

The modified view.

## Discussion

To control focus by matching a simple boolean condition, use the [searchFocused(_:)](/documentation/swiftui/view/searchfocused(_:)) modifier instead.

For more information about using searchable modifiers, refer to [Adding-a-search-interface-to-your](/documentation/swiftui/adding-a-search-interface-to-your-app).

## Managing focus state

- [focused(_:equals:)](/documentation/swiftui/view/focused(_:equals:))
- [focused(_:)](/documentation/swiftui/view/focused(_:))
- [isFocused](/documentation/swiftui/environmentvalues/isfocused)
- [FocusState](/documentation/swiftui/focusstate)
- [FocusedValue](/documentation/swiftui/focusedvalue)
- [Entry()](/documentation/swiftui/entry())
- [FocusedValueKey](/documentation/swiftui/focusedvaluekey)
- [FocusedBinding](/documentation/swiftui/focusedbinding)
- [searchFocused(_:)](/documentation/swiftui/view/searchfocused(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
