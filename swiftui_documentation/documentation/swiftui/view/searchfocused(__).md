---
title: searchFocused(_:)
description: Modifies this view by binding the focus state of the search field associated with the nearest searchable modifier to the given Boolean value.
source: https://developer.apple.com/documentation/swiftui/view/searchfocused(_:)
timestamp: 2025-10-29T00:10:10.197Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# searchFocused(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 2.0+

> Modifies this view by binding the focus state of the search field associated with the nearest searchable modifier to the given Boolean value.

```swift
nonisolated func searchFocused(_ binding: FocusState<Bool>.Binding) -> some View
```

## Return Value

The modified view.

## Discussion

To control focus by matching a non-boolean value, use the [searchFocused(_:equals:)](/documentation/swiftui/view/searchfocused(_:equals:)) modifier instead.

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
- [searchFocused(_:equals:)](/documentation/swiftui/view/searchfocused(_:equals:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
