---
title: FocusedBinding
description: A convenience property wrapper for observing and automatically unwrapping state bindings from the focused view or one of its ancestors.
source: https://developer.apple.com/documentation/swiftui/focusedbinding
timestamp: 2025-10-29T00:10:51.092Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# FocusedBinding

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A convenience property wrapper for observing and automatically unwrapping state bindings from the focused view or one of its ancestors.

```swift
@propertyWrapper struct FocusedBinding<Value>
```

## Overview

If multiple views publish bindings using the same key, the wrapped property will reflect the value of the binding from the view closest to focus.

## Conforms To

- [DynamicProperty](/documentation/swiftui/dynamicproperty)

## Creating the binding

- [init(_:)](/documentation/swiftui/focusedbinding/init(_:)) A new property wrapper for the given key path.

## Getting the value

- [projectedValue](/documentation/swiftui/focusedbinding/projectedvalue) A binding to the optional value.
- [wrappedValue](/documentation/swiftui/focusedbinding/wrappedvalue) The unwrapped value for the focus key given the current scope and state of the focused view hierarchy.

## Managing focus state

- [focused(_:equals:)](/documentation/swiftui/view/focused(_:equals:))
- [focused(_:)](/documentation/swiftui/view/focused(_:))
- [isFocused](/documentation/swiftui/environmentvalues/isfocused)
- [FocusState](/documentation/swiftui/focusstate)
- [FocusedValue](/documentation/swiftui/focusedvalue)
- [Entry()](/documentation/swiftui/entry())
- [FocusedValueKey](/documentation/swiftui/focusedvaluekey)
- [searchFocused(_:)](/documentation/swiftui/view/searchfocused(_:))
- [searchFocused(_:equals:)](/documentation/swiftui/view/searchfocused(_:equals:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
