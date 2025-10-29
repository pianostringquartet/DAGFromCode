---
title: FocusedValueKey
description: A protocol for identifier types used when publishing and observing focused values.
source: https://developer.apple.com/documentation/swiftui/focusedvaluekey
timestamp: 2025-10-29T00:11:37.764Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# FocusedValueKey

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A protocol for identifier types used when publishing and observing focused values.

```swift
protocol FocusedValueKey
```

## Overview

Unlike [Environment Key](/documentation/swiftui/environmentkey), `FocusedValueKey` has no default value requirement, because the default value for a key is always `nil`.

Use the `Entry` macro to create custom focused values by extending `FocusedValues` with new properties:

```swift
extension FocusedValues {
    @Entry var selectedItem: Item?
}
```

Alternatively it is possible to create a focused value key by manually creating a type that conforms to this protocol:

```swift
struct SelectedItemKey: FocusedValueKey {
    typealias Value = Item
}
```

Then extend [Focused Values](/documentation/swiftui/focusedvalues) to add a computed property for your key:

```swift
extension FocusedValues {
    var selectedItem: Item? {
        get { self[SelectedItemKey.self] }
        set { self[SelectedItemKey.self] = newValue }
    }
}
```

## Specifying the value type

- [Value](/documentation/swiftui/focusedvaluekey/value)

## Managing focus state

- [focused(_:equals:)](/documentation/swiftui/view/focused(_:equals:))
- [focused(_:)](/documentation/swiftui/view/focused(_:))
- [isFocused](/documentation/swiftui/environmentvalues/isfocused)
- [FocusState](/documentation/swiftui/focusstate)
- [FocusedValue](/documentation/swiftui/focusedvalue)
- [Entry()](/documentation/swiftui/entry())
- [FocusedBinding](/documentation/swiftui/focusedbinding)
- [searchFocused(_:)](/documentation/swiftui/view/searchfocused(_:))
- [searchFocused(_:equals:)](/documentation/swiftui/view/searchfocused(_:equals:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
