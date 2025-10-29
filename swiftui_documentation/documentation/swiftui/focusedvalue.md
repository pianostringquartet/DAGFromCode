---
title: FocusedValue
description: A property wrapper for observing values from the focused view or one of its ancestors.
source: https://developer.apple.com/documentation/swiftui/focusedvalue
timestamp: 2025-10-29T00:15:19.371Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# FocusedValue

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A property wrapper for observing values from the focused view or one of its ancestors.

```swift
@propertyWrapper struct FocusedValue<Value>
```

## Overview

If multiple views publish values using the same key, the wrapped property will reflect the value from the view closest to focus.

## Conforms To

- [DynamicProperty](/documentation/swiftui/dynamicproperty)

## Creating the value

- [init(_:)](/documentation/swiftui/focusedvalue/init(_:)) A new property wrapper for the given key path.

## Getting the value

- [wrappedValue](/documentation/swiftui/focusedvalue/wrappedvalue) The value for the focus key given the current scope and state of the focused view hierarchy.

## Managing focus state

- [focused(_:equals:)](/documentation/swiftui/view/focused(_:equals:))
- [focused(_:)](/documentation/swiftui/view/focused(_:))
- [isFocused](/documentation/swiftui/environmentvalues/isfocused)
- [FocusState](/documentation/swiftui/focusstate)
- [Entry()](/documentation/swiftui/entry())
- [FocusedValueKey](/documentation/swiftui/focusedvaluekey)
- [FocusedBinding](/documentation/swiftui/focusedbinding)
- [searchFocused(_:)](/documentation/swiftui/view/searchfocused(_:))
- [searchFocused(_:equals:)](/documentation/swiftui/view/searchfocused(_:equals:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
